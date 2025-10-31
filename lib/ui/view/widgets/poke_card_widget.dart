import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/models/pokemon_model.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_viewer_page.dart';

import 'package:pokedex_3d/ui/viewmodel/pokemon_details_provider.dart';

class PokeCardWidget extends ConsumerWidget {
  final int index;
  final Pokemon3dModel pokemon3d;

  const PokeCardWidget({
    super.key,

    required this.pokemon3d,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final pokemonState = ref.watch(pokemonDetailsProvider(pokemon3d.id));
    return pokemonState.when(
      data: (pokemon) => GestureDetector(
        onTap: () {
          ref
              .read(pokemonPageViewmodelProvider.notifier)
              .selectPokemonFromList(
                pokemon3d: pokemon3d,
                index: index,
                pokemon: pokemon,
              );
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const PokemonViewerPage();
              },
            ),
          );
        },
        child: PokemonCardBody(pokemon: pokemon, textTheme: textTheme),
      ),
      error: (e, st) => const Center(child: Text('')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class PokemonCardBody extends StatelessWidget {
  const PokemonCardBody({
    super.key,
    required this.pokemon,
    required this.textTheme,
  });

  final PokemonDetailsModel pokemon;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final pokemonType = PokemonType.parse(pokemon.types.first);
    return Container(
      decoration: BoxDecoration(
        color: pokemonType.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              bottom: -15,
              right: -3,
              child: Image.asset(
                pokemonType.icon,
                width: 83,
                color: Colors.white24,
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 7, bottom: 3),
                child: CachedNetworkImage(
                  height: 76,
                  width: 76,
                  fit: BoxFit.contain,
                  imageUrl:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.id}.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8, top: 8),
                child: Text(
                  "#${pokemon.id}",
                  style: const TextStyle(
                    fontFamily: "CircularStd-Book",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: pokemon.types
                        .map(
                          (type) => Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                color: Colors.white24,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                child: Text(
                                  type,
                                  style: textTheme.bodyLarge?.copyWith(
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
