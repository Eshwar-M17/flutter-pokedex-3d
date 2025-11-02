import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/widgets/pokemon_grid.dart';
import 'package:pokedex_3d/ui/view/widgets/empty_collection_widget.dart';

class PokemonListBody extends ConsumerWidget {
  const PokemonListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListState = ref.watch(pokemon3dModelListNotifierProvider);

    return pokemonListState.when(
      data: (pokeList) {
        if (pokeList.isEmpty) {
          return SliverToBoxAdapter(child: EmptyCollectionWidget());
        }
        return PokemonGrid(pokeList: pokeList);
      },
      error: (e, st) =>
          SliverToBoxAdapter(child: Center(child: Text(e.toString()))),
      loading: () => const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
