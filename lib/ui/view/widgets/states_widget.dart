import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/model_view_widget.dart';

class StatesWidget extends ConsumerWidget {
  const StatesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemoDetailsRes = ref.watch(
      pokemonPageViewmodelProvider.select((s) {
        return s.pokemonInfo;
      }),
    );
    return pokemoDetailsRes.when(
      data: (pokemoDetails) {
        // print(Po)
        return Column(
          children: [
            ...pokemoDetails.stats.map((e) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 4,
                ),
                child: Row(
                  children: [
                    // Stat label (fixed width for alignment)
                    SizedBox(
                      width: 50, // adjust to align nicely
                      child: Text(
                        statsLables[e.name] ?? "null",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),

                    // Bar section
                    Expanded(
                      child: Stack(
                        children: [
                          // Background bar
                          Container(
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),

                          // Foreground (animated) bar
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            height: 13,
                            width:
                                (e.baseStat / 255) *
                                MediaQuery.of(context).size.width *
                                0.5,
                            // adjust 0.5 factor to control max width relative to screen
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    // Stat value
                    Text(
                      e.baseStat.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            }),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, st) => Center(child: Text(error.toString())),
    );
  }
}
