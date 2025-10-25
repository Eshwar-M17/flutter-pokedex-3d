import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/providers/service_providers.dart';
import 'package:pokedex_3d/data/repository/pokemon_model_list_repository.dart';

final pokemonModelListRepositoryProvider = Provider(
  (ref) => PokemonModelListRepository(
    databaseService: ref.read(databaseServiceProvider),
    apiService: ref.read(apiServiceProvider),
  ),
);
