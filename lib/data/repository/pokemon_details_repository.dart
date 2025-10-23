import 'dart:async';

import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/pokemon_hive_mapper.dart';
import 'package:pokedex_3d/data/mappers/pokemon_api_mapper.dart';
import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/data/services/local/database_service.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class PokemonDetailsRepository {
  final ApiService _apiService;
  final DatabaseService _databaseService;
  PokemonDetailsRepository({
    required ApiService apiService,
    required DatabaseService databaseService,
  }) : _apiService = apiService,
       _databaseService = databaseService;

  Future<Result<PokemonModel>> getPokemonDetails(int id) async {
    try {
      PokemonModel? pokemonDetails = _databaseService.getPokemonDetails(id)?.toDomain();
      if (pokemonDetails != null) {
        return Result.ok(pokemonDetails);
      }
      final pokemonDetailsApi = await _apiService.getPokemonDetails(id);
      pokemonDetails = pokemonDetailsApi.toDomain();

      unawaited(_databaseService.putPokemonDetails(pokemonDetails.toHive()));

      return Result.ok(pokemonDetails);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
