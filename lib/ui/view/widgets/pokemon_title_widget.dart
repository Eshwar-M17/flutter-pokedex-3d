import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/type_tags_widget.dart';

class PokemonTitleWidget extends ConsumerWidget {
  const PokemonTitleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPokemon = ref.watch(pokemonPageViewmodelProvider);
    

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#${currentPokemon.pokemon.id}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              currentPokemon.pokemon.forms[currentPokemon.currentForm].name,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TypeTagsWidget(),
          ],
        ),
      ),
    );
  }
}
