import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/logger.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/widgets/pokemon_grid.dart';
import 'package:pokedex_3d/ui/view/widgets/empty_collection_widget.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_list_page_viewmodel.dart';

class PokemonListBody extends ConsumerWidget {
  const PokemonListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListState = ref.watch(pokemonListPageViewmodelProvider);

    return pokemonListState.pokemonList.when(
      data: (pokeList) {
        if (pokeList.isEmpty) {
          if (pokemonListState.isFilteredResult) {
            log.e("filtered 0");
            return SliverFillRemaining(
              child: Center(
                child: Text(
                  "No Pokemon for the selected Filter",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            );
          } else if (pokemonListState.isSearchResult) {
            return SliverFillRemaining(
              child: Center(child: Text("No Pokemon avaiable for the Search")),
            );
          } else if (pokemonListState.isOffline) {
            return SliverFillRemaining(child: EmptyCollectionWidget());
          }
        }
        return PokemonGrid(pokeList: pokeList);
      },
      error: (e, st) =>
          SliverFillRemaining(child: Center(child: Text(e.toString()))),
      loading: () => SliverFillRemaining(
        child: PokemonGrid(
          pokeList: List.generate(
            10,
            (index) => Pokemon3dModel(id: 0, forms: []),
          ),
        ),
      ),
    );
  }
}
