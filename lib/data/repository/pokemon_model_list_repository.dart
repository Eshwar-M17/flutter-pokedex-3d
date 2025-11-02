// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/errors/error_mapper.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/pokemon_3d_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/pokemon_3d_hive_mapper.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
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
    try {
      List<Pokemon3dModel> pokemonList = _databaseService
          .getPokemonList()
          .map((e) => e.toDomain())
          .toList();

      if (pokemonList.isNotEmpty) {
        return Result.ok(pokemonList);
      }
      final pokemonListApi = await _apiService.getPokemonList();
      pokemonList = pokemonListApi.map((e) => e.toDomain()).toList();
      unawaited(
        _databaseService.putPokemonList(
          pokemonList.map((e) => e.toHive()).toList(),
        ),
      );

      return Result.ok(pokemonList);
    } catch (e) {
      return Result.error(ErrorMapper.mapException(e));
    }
  }

  Future<Result<List<Pokemon3dModel>>> getViewedPokemonList() async {
    try {
      List<Pokemon3dModel> pokemonList = _databaseService
          .getViewedPokemonList()
          .map((e) => e.toDomain())
          .toList();
      Logger().i("PokemonModelListRepository getViewedPokemonList vieweed pokemon  length ${pokemonList.length}");

      return Result.ok(pokemonList);
      
    } catch (e) {
      return Result.error(ErrorMapper.mapException(e));
    }
  }

  Future<Result<bool>> putViewedPokemon(Pokemon3dModel pokemon) async {
    try {
      await _databaseService.putViewedPokemon(pokemon.toHive());
      return Result.ok(true);
    } catch (e) {
      return Result.error(ErrorMapper.mapException(e));
    }
  }
}
