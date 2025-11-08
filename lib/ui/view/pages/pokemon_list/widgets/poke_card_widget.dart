import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/utils/enums.dart';
import 'package:pokedex_3d/core/utils/extenshion.dart';
import 'package:pokedex_3d/data/models/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/pokemon_viewer_page.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_details_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
    bool isLoading = pokemonState.isLoading;
    final content = pokemonState.when(
      data: (pokemon) => PokemonCardBody(
        onTap: () => _onTap(ref, pokemon, context),
        pokemon: pokemon,
        textTheme: textTheme,
        isLoading: isLoading,
        name: pokemon3d.forms.first.name,
      ),
      error: (e, st) => const Center(child: Text('')),
      loading: () => PokemonCardBody(
        onTap: null,
        pokemon: PokemonDetailsModel(
          baseExperience: 0,
          height: 0,
          weight: 0,
          id: 0,
          name: 'aaa',
          stats: [],
          types: ['bug'],
        ),
        textTheme: textTheme,
        isLoading: isLoading,
        name: 'laoding',
      ),
    );

    return Skeletonizer(enabled: isLoading, child: content);
  }

  void _onTap(
    WidgetRef ref,
    PokemonDetailsModel pokemon,
    BuildContext context,
  ) {
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
  }
}

class PokemonCardBody extends StatelessWidget {
  final Function? onTap;
  final String name;
  final bool isLoading;
  const PokemonCardBody({
    super.key,
    required this.pokemon,
    required this.textTheme,
    required this.name,
    required this.onTap,
    required this.isLoading,
  });

  final PokemonDetailsModel pokemon;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final pokemonType = isLoading
        ? PokemonType.bug
        : PokemonType.parse(pokemon.types.first);
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(0),
      color: isLoading ? Colors.black26 : pokemonType.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(),
        child: Stack(
          children: [
            Positioned(
              bottom: -15,
              right: -3,
              child: Skeleton.replace(
                replacement: Bone.square(
                  size: 80,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  pokemonType.iconBg,
                  width: 78,

                  color: Colors.white24,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Skeleton.ignore(
                child: CachedNetworkImage(
                  height: 80,
                  width: 80,
                  fit: BoxFit.fill,
                  imageUrl:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.id}.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12, top: 12),
                child: Text(
                  '#${pokemon.id.toPokemonId()}',

                  // style: ,
                  style: textTheme.titleSmall!.copyWith(
                    // fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(
                      context,
                    ).colorScheme.onInverseSurface.withAlpha(200),
                    // color: Colors.white54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.capitalize(),
                    style: textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onInverseSurface,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: pokemon.types
                        .map(
                          (type) => Container(
                            margin: EdgeInsets.only(top: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(38),
                              color: Theme.of(
                                context,
                              ).scaffoldBackgroundColor.withAlpha(40),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 2,
                              ),
                              child: Text(
                                type,
                                style: textTheme.titleSmall!.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onInverseSurface,
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
