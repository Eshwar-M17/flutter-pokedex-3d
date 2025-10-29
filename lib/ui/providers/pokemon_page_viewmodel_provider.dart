import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:pokedex_3d/data/providers/pokemon_model_list_provider.dart';
import 'package:pokedex_3d/data/providers/repository_providers.dart';
import 'package:pokedex_3d/ui/providers/model_controller_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/state/pokemon_state.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_page_viewmodel.dart';

final pokemonPageViewmodelProvider =
    StateNotifierProvider<PokemonPageViewmodel, PokemonPageState>((ref) {
      final pokemon3dModelListState = ref.read(
        pokemon3dModelListNotifierProider,
      );
      final controller = PokemonPageViewmodel(
        detailRepo: ref.read(pokemonDetailsRepositoryProvider),
        evolRepo: ref.read(pokemonEvolutionRepositoryProvider),
        modelController: ref.read(model3dControllerProvider.notifier),
        pokemonViewedListRepository: ref.read(
          pokemonModelListRepositoryProvider,
        ),
      );

      // Only select first Pokémon if list is ready
      pokemon3dModelListState.whenData((pokemonList) {
        if (pokemonList.isNotEmpty) {
          controller.selectPokemon(pokemonList.first, 0);
        }
      });

      return controller;
    });
