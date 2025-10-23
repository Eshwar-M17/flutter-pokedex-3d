import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/pokemon_model.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';

class TypeTagsWidget extends ConsumerWidget {
  const TypeTagsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsState = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.pokemonInfo),
    );

    return detailsState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (pokemonDetails) {
        return Column(
          children: [
            ...pokemonDetails.types.map((e) {

              final type = PokemonType.parse(e);
              return Container(
                width: 100,
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                  color: type.color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        type.iconBg,
                        width: 15,
                        color: type.color,
                      ),
                    ),
                    const SizedBox(width: 6),

                    Text(
                      e,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        );
      },
      error: (error, stackTrace) {

        return Center(child: Text('${error.toString()} error'));
      },
    );
  }
}
