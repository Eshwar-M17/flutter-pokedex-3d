import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';

class EvolutionChainWidget extends ConsumerStatefulWidget {
  const EvolutionChainWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EvolutionChainWidgetState();
}

class _EvolutionChainWidgetState extends ConsumerState<EvolutionChainWidget> {
  @override
  Widget build(BuildContext context) {
    final evolutionResponse = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.evolutionData),
    );
  return   evolutionResponse.when(
      data: (evolutionData) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < evolutionData.length; i++) ...[
                  // Column for each level
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: evolutionData[i].map((node) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white54,
                                child: CachedNetworkImage(
                                  placeholder: (context, url) => Icon(
                                    Icons.catching_pokemon_rounded,
                                    color: Colors.redAccent[100],
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(
                                        Icons.catching_pokemon_rounded,
                                      ),
                                  imageUrl:
                                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${node.id}.png',
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                node.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  // 👉 Add arrow after each stage, except the last one
                  if (i < evolutionData.length - 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 24,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            evolutionData[i + 1].first.minLevel.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ],
            ),
          ),
        );
      },
      error: (e, st) {
        return Center(child: Text(e.toString()));
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
