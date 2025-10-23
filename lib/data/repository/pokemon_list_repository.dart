// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/pokemon_3d_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/pokemon_3d_hive_mapper.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class PokemonListRepository {
  final ApiService _apiService;
  final DatabaseService _databaseService;
  PokemonListRepository({
    required ApiService apiService,
    required DatabaseService databaseService,
  }) : _apiService = apiService,
       _databaseService = databaseService;

  Future<Result<List<Pokemon3dModel>>> getPokemonList() async {
    try {
      List<Pokemon3dModel> pokemonList = _databaseService
          .getPokemonList()
          .map((e) => e.toDomain())
          .toList();
      if (pokemonList.isNotEmpty) {
        return Result.ok(pokemonList);
      }

      final pokemonListApi = await _apiService.getPokemonList();
      pokemonList = pokemonListApi.map((e) {
        return e.toDomain();
      }).toList();
      if (pokemonList.isNotEmpty) {
        return Result.ok(pokemonList);
      }
      unawaited(
        _databaseService.putPokemonList(
          pokemonList.map((e) => e.toHive()).toList(),
        ),
      );
      throw Exception("No Pokémon found");
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
