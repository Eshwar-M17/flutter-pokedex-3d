import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/pokemon_model_list_notifier_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';

class PokemonListWidget extends ConsumerStatefulWidget {
  const PokemonListWidget({super.key});

  @override
  ConsumerState createState() => PokemonListWidgetState();
}

class PokemonListWidgetState extends ConsumerState<PokemonListWidget> {
  late final ScrollController _controller;

  final double itemWidth = 78; // width + padding
  final double imageSize = 70;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonListState = ref.watch(pokemonModelListNotifierProvider);
    final pokemonState = ref.read(pokemonPageViewmodelProvider.notifier);

    final double screenWidth = MediaQuery.of(context).size.width;

    return pokemonListState.when(
      data: (pokemonList) {
        final spacerWidth = screenWidth / 2 - itemWidth / 2;

        return Stack(
          children: [
            /// center highlight circle
            Center(
              child: Container(
                width: imageSize,
                height: imageSize,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(imageSize / 2),
                ),
              ),
            ),

            /// horizontal scroll list
            ListView.builder(
              controller: _controller,
              itemCount: pokemonList.length + 2, // +2 for spacers
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // left/right spacer
                if (index == 0 || index == pokemonList.length + 1) {
                  return SizedBox(width: spacerWidth);
                }

                final actualIndex = index - 1; // pokemon index (0-based)

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {
                      final targetOffset =
                          spacerWidth +
                          actualIndex * itemWidth -
                          (screenWidth / 2 - itemWidth / 2);

                      _controller.animateTo(
                        targetOffset.clamp(
                          _controller.position.minScrollExtent,
                          _controller.position.maxScrollExtent,
                        ),
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.ease,
                      );
                      pokemonState.selectPokemon(pokemonList[actualIndex]);

                      setState(() {});
                    },
                    child: SizedBox(
                      width: imageSize,
                      child: CachedNetworkImage(
                        placeholder: (context, url) => Icon(
                          Icons.catching_pokemon_rounded,
                          color: Colors.redAccent[100],
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.catching_pokemon_rounded),
                        imageUrl:
                            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemonList[actualIndex].id}.png',
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
      error: (e, st) => Text(e.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
