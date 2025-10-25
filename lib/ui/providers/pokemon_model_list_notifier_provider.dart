import 'package:flutter_riverpod/legacy.dart';
import 'package:pokedex_3d/data/providers/pokeom_model_list_provider.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_model_list_notifier.dart';

final pokemonModelListNotifierProvider = StateNotifierProvider(
  (ref) => PokemonModelListNotifier(
    pokemonModelListRepository: ref.read(pokemonModelListRepositoryProvider),
  ),
);
