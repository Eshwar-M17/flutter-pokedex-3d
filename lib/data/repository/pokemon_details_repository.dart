import 'dart:async';
import 'dart:convert';

import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/core/utils/safe_network_call.dart';
import 'package:pokedex_3d/core/utils/try_cache_operation.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/pokemon_hive_mapper.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/pokemon_api_mapper.dart';
import 'package:pokedex_3d/data/models/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex_3d/data/repository/model_repository.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_api_model/pokemon_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';
import '../../core/utils/logger.dart';

class PokemonDetailsRepository {
  final ApiService _apiService;
  final DatabaseService _databaseService;
  PokemonDetailsRepository({
    required ApiService apiService,
    required DatabaseService databaseService,
  }) : _apiService = apiService,
       _databaseService = databaseService;

  Future<Result<PokemonDetailsModel>> getPokemonDetails(int id) async {
    PokemonDetailsModel? pokemonDetails;
    final cacheResponse = await tryCacheOperation<PokemonDetailsModel>(
      () async {
        pokemonDetails = _databaseService.getPokemonDetails(id)?.toDomain();

        if (pokemonDetails != null) {
          return Result.ok(pokemonDetails!);
        }
        return null; // to indicate cache miss
      },
    );

    if (cacheResponse != null) {
      return cacheResponse;
    }

    // fetching details from network

    log.i('fetching  details for $id from network ');
    return await safeNetworkCall<PokemonDetailsModel>(
      networkCall: () => _apiService.getPokemonDetails(id),
      mapResponse: (response) async {
        if (response.statusCode == 200) {
          final pokemonDetailsApi = PokemonDetailApiModel.fromJson(
            jsonDecode(response.body!),
          );
          pokemonDetails = pokemonDetailsApi.toDomain();
          unawaited(
            _databaseService.putPokemonDetails(pokemonDetails!.toHive()),
          );
          return Result<PokemonDetailsModel>.ok(pokemonDetails!);
        }
        return null; // when null an exception is thrown
      },
    );
  }
}
