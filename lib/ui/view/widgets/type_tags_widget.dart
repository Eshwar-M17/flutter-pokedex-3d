import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/errors/error.dart';
import 'package:pokedex_3d/data/models/pokemon_model.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TypeTagsWidget extends ConsumerWidget {
  const TypeTagsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsState = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.pokemonInfo),
    );
    final isLoading = detailsState.isLoading;

    // Build once to avoid shimmer restarts on rebuilds
    Widget content = detailsState.when(
      loading: () => _buildTypeTags(types: [null], isLoading: isLoading),
      data: (pokemonDetails) =>
          _buildTypeTags(types: pokemonDetails.types, isLoading: isLoading),
      error: (e, st) => Center(
        child: Text(
          e.toString(),

          style: const TextStyle(color: Colors.redAccent),
        ),
      ),
    );

    return Skeletonizer(
      enabled: isLoading,
      effect: const ShimmerEffect(
        baseColor: Color(0x22FFFFFF), // subtle shimmer overlay
        highlightColor: Color(0x55FFFFFF),
      ),
      child: content,
    );
  }
}

Widget _buildTypeTags({required List<String?> types, required bool isLoading}) {
  return Column(
    children: [
      for (final e in types) _TypeTag(typeName: e, isLoading: isLoading),
    ],
  );
}

class _TypeTag extends StatelessWidget {
  final String? typeName;
  final bool isLoading;

  const _TypeTag({required this.typeName, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    final type = typeName == null
        ? PokemonType.unknown
        : PokemonType.parse(typeName!);

    final baseColor = isLoading ? Colors.white.withAlpha(50) : type.color;

    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color: baseColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white.withAlpha(225),
              child: isLoading
                  ? const SizedBox.shrink()
                  : Image.asset(type.iconBg, width: 15, color: type.color),
            ),
            const SizedBox(width: 6),
            Text(
              typeName ?? "unknown",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
