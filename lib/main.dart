import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedex_3d/core/constants.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_hive_model.dart';
import 'package:pokedex_3d/ui/view/pages/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
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
    Hive.openBox<Pokemon3dHive>(AppConstants.pokemonListboxKey),
    Hive.openBox<PokemonHive>(AppConstants.pokemonDetailBoxKey),
    Hive.openBox<SpeciesHive>(AppConstants.pokemonEvolutionBoxKey),
    Hive.openBox<int>(AppConstants.pokemonEvolutionSpeciesBoxKey),
  ]);
}
