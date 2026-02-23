import 'dart:async';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/constants/hive_constants.dart';
import 'package:pokedex_3d/hive_registrar.g.dart';
import 'package:pokedex_3d/ui/errors/error_widget.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_detail_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_detail_hive_model.dart';
import 'package:pokedex_3d/ui/app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/utils/logger.dart';
import 'package:pokedex_3d/data/providers/shared_preferences.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      ErrorWidget.builder = (FlutterErrorDetails details) =>
          ErrorWidgetClass(details);

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.dumpErrorToConsole(details);
      };

      final result = await Future.wait([
        initHive(),
        SharedPreferencesWithCache.create(
          cacheOptions: SharedPreferencesWithCacheOptions(),
        ),
      ]);

      final prefs = result[1] as SharedPreferencesWithCache;

      return runApp(
        ProviderScope(
          overrides: [sharedPreferences.overrideWithValue(prefs)],
          child: PokeDex3D(),
        ),
      );
    },
    (error, st) {
      log.e(error);
    },
  );
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapters();

  await Future.wait([
    Hive.openBox<String?>(HiveConstants.pokemonListEntityIdBox),
    Hive.openBox<Pokemon3dHive>(HiveConstants.pokemonListboxKey),
    Hive.openBox<PokemonDetailHive>(HiveConstants.pokemonDetailBoxKey),
    Hive.openBox<EvolutionDetailHive>(HiveConstants.pokemonEvolutionBoxKey),
    Hive.openBox<int>(HiveConstants.pokemonEvolutionSpeciesBoxKey),
    Hive.openBox<Pokemon3dHive>(HiveConstants.pokemonViewedListboxKey),
  ]);
}
