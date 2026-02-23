// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/core/utils/safe_network_call.dart';
import 'package:pokedex_3d/core/utils/try_cache_operation.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/pokemon_3d_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/pokemon_3d_hive_mapper.dart';
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/core/utils/logger.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon3d_model/pokemon_3d_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class PokemonModelListRepository {
  final DatabaseService _databaseService;
  final ApiService _apiService;
  PokemonModelListRepository({
    required DatabaseService databaseService,
    required ApiService apiService,
  }) : _databaseService = databaseService,
       _apiService = apiService;

  Future<Result<List<Pokemon3dModel>>> getMainPokemonList() async {
    // try {
    log.i('fetching etag from cache');

    final String? etag = _databaseService.getPokemonListEtag();

    List<Pokemon3dModel> pokemonList;
    log.i(etag);

    return safeNetworkCall(
      networkCall: () => _apiService.getPokemonList(eTag: etag),
      mapResponse: (response) async {
        if (response.statusCode == 304) {
          // cache is not stale reusing
          return await tryCacheOperation(() async {
            pokemonList = _databaseService
                .getPokemonList()
                .map((e) => e.toDomain())
                .toList();
            return Result.ok(pokemonList);
          });
        } else if (response.statusCode == 200) {
          //cache was stale
          final decodedList = jsonDecode(response.body!) as List;
          pokemonList = decodedList.map((item) {
            return Pokemon3dApiModel.fromJson(
              item as Map<String, dynamic>,
            ).toDomain();
          }).toList();

          // saving etag and list
          unawaited(_databaseService.putPokemonListEtag(response.etag));
          unawaited(
            _databaseService.putPokemonList(
              pokemonList.map((e) => e.toHive()).toList(),
            ),
          );
          return Result.ok(pokemonList);
        }
        return null;
      },
    );
  }

  Future<Result<List<Pokemon3dModel>>> getViewedPokemonList() async {
    final cacheResponse = await tryCacheOperation(() async {
      List<Pokemon3dModel> pokemonList = _databaseService
          .getViewedPokemonList()
          .map((e) => e.toDomain())
          .toList();

      return Result.ok(pokemonList);
    });
return cacheResponse!;

  }

  Future<Result<bool>> putViewedPokemon(Pokemon3dModel pokemon) async {
    final cacheResponse = await tryCacheOperation(() async {
      await _databaseService.putViewedPokemon(pokemon.toHive());
      return Result.ok(true);
    });
    return cacheResponse!;
  }
}
