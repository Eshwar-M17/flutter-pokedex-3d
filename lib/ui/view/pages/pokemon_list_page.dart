import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/pages/pokrmonitem.dart';

class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListState = ref.watch(pokemon3dModelListNotifierProider);
    return Scaffold(
      appBar: _buildAppBar(),
      body: pokemonListState.when(
        data: (pokeList) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: PokemonGrid(pokeList: pokeList),
        ),
        error: (e, st) => Center(child: Text(e.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "PokeDex 3D",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class PokemonGrid extends StatelessWidget {
  final List<Pokemon3dModel> pokeList;
  const PokemonGrid({super.key, required this.pokeList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pokeList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (BuildContext context, index) {
        final pokemon = pokeList[index];

        return PokeItemWidget(id: pokemon.id, pokemon3d: pokemon, index: index);
      },
    );
  }
}
