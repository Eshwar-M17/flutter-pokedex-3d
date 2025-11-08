import 'dart:async';
import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/core/utils/safe_network_call.dart';
import 'package:pokedex_3d/core/utils/try_cache_operation.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/evolution_chain_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/evolution_hive_mapper.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_detail_hive_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_species_api_model/pokemon_species_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class PokemonEvolutionRepository {
  final ApiService _apiService;
  final DatabaseService _databaseService;
  final log = Logger();
  PokemonEvolutionRepository({
    required ApiService apiService,
    required DatabaseService databaseService,
  }) : _apiService = apiService,
       _databaseService = databaseService;

  Future<Result<EvolutionDetail>> getEvolutionDetails(int id) async {
    final cacheResponse = await tryCacheOperation<EvolutionDetail>(() async {
      EvolutionDetailHive? evolutionDetailHive = _databaseService
          .getEvolutionDetails(id);

      if (evolutionDetailHive != null) {
        log.i("inside PokemonEvolutionRepository  in cache hit $id");

        return Result.ok(evolutionDetailHive.toDomain());
      }
      return null; //cache miss;
    });
    if (cacheResponse != null) {
      return cacheResponse;
    }

    // first we fetch species details of pokemon
    return safeNetworkCall(
      networkCall: () => _apiService.getSpeciesDetails(id),
      mapResponse: (speciesResponse) async {
        if (speciesResponse.statusCode == 200) {
          final species = PokemonSpeciesApiModel.fromJson(
            jsonDecode(speciesResponse.body!),
          );
          // fetching evolution chain details using  species.evolutionChain.url
          return await _getEvolutionDetailsForSpecies(
            species.evolutionChain.url,
            id, // for caching mapping pokemon id mapped to  species id for later retrival
          );
        }
        return null;
      },
    );
  }

  Future<Result<EvolutionDetail>> _getEvolutionDetailsForSpecies(
    String url,
    int id,
  ) {
    return safeNetworkCall<EvolutionDetail>(
      networkCall: () => _apiService.getEvolutionDetails(url),
      mapResponse: (evolutionResponse) async {
        if (evolutionResponse.statusCode == 200) {
          final evolutionModelApi = EvolutionChainApiModel.fromJson(
            jsonDecode(evolutionResponse.body!),
          );

          final evolutionModel = evolutionModelApi.toDomain();
          unawaited(
            _databaseService.putEvolutionDetails(
              data: evolutionModel.toHive(),
              pokemonId: id,
            ),
          );
          return Result<EvolutionDetail>.ok(evolutionModel);
        }

        return null;
      },
    );
  }

}
