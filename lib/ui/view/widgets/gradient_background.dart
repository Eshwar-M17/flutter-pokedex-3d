import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/pokemon_model.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';

class GradientBackground extends ConsumerWidget {
  const GradientBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dominantColorGradient = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.dominantColorGradient),
    );

    return AnimatedContainer(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: const [0.4, 0.9],
          begin: AlignmentGeometry.bottomRight,
          end: AlignmentGeometry.topLeft,
          colors:
              dominantColorGradient ??
              [
                PokemonType.grass.color,
                PokemonTypePalette.grass.withAlpha(150),
              ],
        ),
      ),
      duration: const Duration(milliseconds: 300),
      child: child,
    );
  }
}
