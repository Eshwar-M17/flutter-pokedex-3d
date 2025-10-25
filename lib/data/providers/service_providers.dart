import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:pokedex_3d/core/constants.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_hive_model.dart';
import 'package:pokedex_3d/data/services/local/model_database_service.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

final apiServiceProvider = Provider((ref) => ApiService());

final databaseServiceProvider = Provider(
  (ref) => DatabaseService(
    pokemonListBox: Hive.box<Pokemon3dHive>(AppConstants.pokemonListboxKey),
    pokemondetailsBox: Hive.box<PokemonHive>(AppConstants.pokemonDetailBoxKey),
    pokemonEvolutionBox: Hive.box<SpeciesHive>(
      AppConstants.pokemonEvolutionBoxKey,
    ),
    pokemonViewedBox: Hive.box<Pokemon3dHive>(
      AppConstants.pokemonViewedListboxKey,
    ),
    speciesIdBox: Hive.box<int>(AppConstants.pokemonEvolutionSpeciesBoxKey),
  ),
);   

final Provider modelCacheServiceProvider = Provider<CacheManager>((ref) {
  return ModelCacheManager.instance;
});
