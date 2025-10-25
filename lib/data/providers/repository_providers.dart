import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/providers/service_providers.dart';
import 'package:pokedex_3d/data/repository/pokemon_details_repository.dart';
import 'package:pokedex_3d/data/repository/pokemon_evolution_repository.dart';
import 'package:pokedex_3d/data/repository/pokemon_model_list_repository.dart';

final pokemonEvolutionRepositoryProvider = Provider((ref) {
  return PokemonEvolutionRepository(
    apiService: ref.read(apiServiceProvider),
    databaseService: ref.read(databaseServiceProvider),
  );
});

final pokemonDetailsRepositoryProvider = Provider((ref) {
  return PokemonDetailsRepository(
    apiService: ref.read(apiServiceProvider),
    databaseService: ref.read(databaseServiceProvider),
  );
});

// final pokemonListRepositoryProvider = Provider((ref) {
//   return PokemonListRepository(
//     apiService: ref.read(apiServiceProvider),
//     databaseService: ref.read(databaseServiceProvider),
//   );
// });
