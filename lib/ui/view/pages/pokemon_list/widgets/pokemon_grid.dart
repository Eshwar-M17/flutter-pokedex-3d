import 'package:flutter/material.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/widgets/poke_card_widget.dart';

class PokemonGrid extends StatelessWidget {
  final List<Pokemon3dModel> pokeList;
  const PokemonGrid({super.key, required this.pokeList});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3 / 2,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        final pokemon = pokeList[index];
        return PokeCardWidget(pokemon3d: pokemon, index: index);
      }, childCount: pokeList.length),
    );
  }
}
