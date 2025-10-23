import 'dart:async';

import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/evolution_chain_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/evolution_hive_mapper.dart';
import 'package:pokedex_3d/data/models/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
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

      final evolutionModelApi = (await _apiService.getPokemonEvolutionChain(
        id,
      ));
      evolutionModel = evolutionModelApi.toDomain();

      unawaited(
        _databaseService
            .putEvolutionDetails(data: evolutionModel.toHive(), pokemonId: id)
            .then((e) {
              log.i("inside PokemonEvolutionRepository cache sucess");
            })
            .onError((e, st) {
              log.i("inside PokemonEvolutionRepository $e");
            }),
      );
      return Result<Species>.ok(evolutionModel);
    } catch (e) {
      return Result<Species>.error(Exception(e));
    }
  }
}
