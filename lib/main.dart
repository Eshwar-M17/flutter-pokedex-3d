import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedex_3d/core/constants/hive_constants.dart';
import 'package:pokedex_3d/core/error_widget/error_widget.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_hive_model.dart';
import 'package:pokedex_3d/ui/app.dart';

import 'core/logger.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      ErrorWidget.builder = (FlutterErrorDetails details) =>
          ErrorWidgetClass(details);

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.dumpErrorToConsole(details);
      };
      await initHive();

      return runApp(const ProviderScope(child: PokeDex3D()));
    },
    (error, st) {
      log.e(error);
    },
  );
}

Future<void> initHive() async {
  await Hive.initFlutter();

  Hive.registerAdapter(PokemonHiveAdapter());
  Hive.registerAdapter(StatHiveAdapter());

  Hive.registerAdapter(Pokemon3dHiveAdapter());
  Hive.registerAdapter(PokemonFormHiveAdapter());

  Hive.registerAdapter(SpeciesHiveAdapter());
  Hive.registerAdapter(PokemonSpeciesHiveAdapter());
  Hive.registerAdapter(EvolutionDetailHiveAdapter());

  await Future.wait([
    Hive.openBox<Pokemon3dHive>(HiveConstants.pokemonListboxKey),
    Hive.openBox<PokemonHive>(HiveConstants.pokemonDetailBoxKey),
    Hive.openBox<SpeciesHive>(HiveConstants.pokemonEvolutionBoxKey),
    Hive.openBox<int>(HiveConstants.pokemonEvolutionSpeciesBoxKey),
    Hive.openBox<Pokemon3dHive>(HiveConstants.pokemonViewedListboxKey),
  ]);
}
