import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/utils/extenshion.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/widgets/type_tags_widget.dart';

class PokemonTitleWidget extends ConsumerWidget {
  const PokemonTitleWidget({super.key});
  static final log = Logger();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPokemon = ref.watch(pokemonPageViewmodelProvider);
    log.i('${currentPokemon.pokemon.id}  ${currentPokemon.currentForm}');

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentPokemon.pokemon.forms[currentPokemon.currentForm].name,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onInverseSurface,
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

class PokemonIdWidget extends ConsumerWidget {
  const PokemonIdWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.pokemon.id),
    );
    return Text(
      '#${id.toPokemonId()}',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onInverseSurface.withAlpha(200),
      ),
    );
  }
}
