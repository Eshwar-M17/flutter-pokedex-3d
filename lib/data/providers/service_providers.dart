import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:pokedex_3d/core/constants/hive_constants.dart';
import 'package:pokedex_3d/core/network/network_client.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_detail_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_detail_hive_model.dart';
import 'package:pokedex_3d/data/services/local/model_database_service.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

final apiServiceProvider = Provider(
  (ref) => ApiService(
    client: NetworkClient(client: HttpClientFactory().createClient()),
  ),
);

final databaseServiceProvider = Provider(
  (ref) => DatabaseService(
    pokemonListEntityIdBox: Hive.box<String?>(
      HiveConstants.pokemonListEntityIdBox,
    ),
    pokemonListBox: Hive.box<Pokemon3dHive>(HiveConstants.pokemonListboxKey),
    pokemondetailsBox: Hive.box<PokemonDetailHive>(
      HiveConstants.pokemonDetailBoxKey,
    ),
    pokemonEvolutionBox: Hive.box<EvolutionDetailHive>(
      HiveConstants.pokemonEvolutionBoxKey,
    ),
    pokemonViewedBox: Hive.box<Pokemon3dHive>(
      HiveConstants.pokemonViewedListboxKey,
    ),
    speciesIdBox: Hive.box<int>(HiveConstants.pokemonEvolutionSpeciesBoxKey),
  ),
);

final Provider<CacheManager> modelCacheServiceProvider = Provider<CacheManager>(
  (ref) {
    return ModelCacheManager.instance;
  },
);
