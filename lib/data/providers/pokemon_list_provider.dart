import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/mappers/api_mappers/pokemon_3d_mapper.dart';
import 'package:pokedex_3d/data/mappers/hive_mappers/pokemon_3d_hive_mapper.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/providers/service_providers.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

final ApiService apiService = ApiService();

final pokemonListProvider = FutureProvider<List<Pokemon3dModel>>((ref) async {

  

  List<Pokemon3dModel> pokemonList = ref
      .read(databaseServiceProvider)
      .getPokemonList()
      .map((e) => e.toDomain())
      .toList();

  if (pokemonList.isNotEmpty) {
    return pokemonList;
  }
  final pokemonListApi = await apiService.getPokemonList();
  pokemonList = pokemonListApi.map((e) => e.toDomain()).toList();
  unawaited(
    ref
        .read(databaseServiceProvider)
        .putPokemonList(pokemonList.map((e) => e.toHive()).toList()),
  );

  return pokemonList;
});
