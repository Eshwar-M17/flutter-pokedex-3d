import 'package:flutter_riverpod/legacy.dart';
import 'package:pokedex_3d/data/providers/pokemon_model_list_provider.dart';
import 'package:pokedex_3d/data/providers/repository_providers.dart';
import 'package:pokedex_3d/ui/providers/model_controller_provider.dart';
import 'package:pokedex_3d/ui/state/pokemon_state.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_page_viewmodel.dart';

final pokemonPageViewmodelProvider =
    StateNotifierProvider<PokemonDetailViewModel, PokemonPageState>((ref) {
      final controller = PokemonDetailViewModel(
        detailRepo: ref.read(pokemonDetailsRepositoryProvider),
        evolRepo: ref.read(pokemonEvolutionRepositoryProvider),
        modelController: ref.read(model3dControllerProvider.notifier),
        pokemonViewedListRepository: ref.read(
          pokemonModelListRepositoryProvider,
        ),
      );

      return controller;
    });
