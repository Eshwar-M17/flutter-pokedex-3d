import 'dart:async';
import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/errors/error_mapper.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/evolution_chain_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/evolution_hive_mapper.dart';
import 'package:pokedex_3d/data/models/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
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

  Future<Result<Species>> getEvolutionDetails(int id) async {
    log.i("inside PokemonEvolutionRepository ");
    try {
      Species? evolutionModel = _databaseService
          .getEvolutionDetails(id)
          ?.toDomain();
      if (evolutionModel != null) {
        log.i("inside PokemonEvolutionRepository  in cache hit $id");

        return Result.ok(evolutionModel);
      }
      log.i("inside PokemonEvolutionRepository cache miss >> api fetch $id");

      final speciesResponse = await _apiService.getSpeciesDetails(id);

      final PokemonSpeciesApiModel species;
      if (speciesResponse.statusCode == 200) {
        species = PokemonSpeciesApiModel.fromJson(
          jsonDecode(speciesResponse.body),
        );

        final evolutionResponse = await _apiService.getEvolutionDetails(
          species.evolutionChain.url,
        );
        if (evolutionResponse.statusCode == 200) {
          final evolutionModelApi = EvolutionChainApiModel.fromJson(
            jsonDecode(evolutionResponse.body),
          );

          evolutionModel = evolutionModelApi.toDomain();
          unawaited(
            _databaseService
                .putEvolutionDetails(
                  data: evolutionModel.toHive(),
                  pokemonId: id,
                )
                .then((e) {
                  log.i("inside PokemonEvolutionRepository cache sucess");
                })
                .onError((e, st) {
                  log.i("inside PokemonEvolutionRepository $e");
                }),
          );
          return Result<Species>.ok(evolutionModel);
        }
        return Result.error(ErrorMapper.mapHttpResponse(evolutionResponse));
      }
      return Result.error(ErrorMapper.mapHttpResponse(speciesResponse));
    } catch (e, st) {
      return Result<Species>.error(ErrorMapper.mapException(e, st));
    }
  }
}
