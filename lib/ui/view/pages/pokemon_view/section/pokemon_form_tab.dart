import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/utils/extenshion.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/widgets/animated_dot_widget.dart';

class PokemonFormTab extends ConsumerWidget {
  const PokemonFormTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.pokemon),
    );
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(pokemon.forms.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 2, right: 2),
            child: Consumer(
              builder: (context, ref, _) {
                final currentIndex = ref.watch(
                  pokemonPageViewmodelProvider.select((s) => s.currentForm),
                );
                return Column(
                  children: [
                    AnimatedDotWidget(
                      isActive: currentIndex == index,
                      onTap: () {
                        ref
                            .read(pokemonPageViewmodelProvider.notifier)
                            .selectForm(index);
                      },
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) => FadeTransition(
                        opacity: animation,
                        child: SizeTransition(
                          sizeFactor: animation,
                          axis: Axis.vertical,
                          child: child,
                        ),
                      ),
                      child: currentIndex == index
                          ? Text(
                              pokemon.forms[currentIndex].formName.capitalize(),
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onInverseSurface,
                                  ),
                            
                              key: ValueKey(
                                index,
                              ), // important for AnimatedSwitcher
                            )
                          : const SizedBox.shrink(key: ValueKey('empty')),
                    ),
                  ],
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
