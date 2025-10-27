import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/model_view_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class StatsWidget extends ConsumerStatefulWidget {
  const StatsWidget({super.key});

  @override
  ConsumerState<StatsWidget> createState() {
    return _StatsWidgetState();
  }
}

class _StatsWidgetState extends ConsumerState<StatsWidget> {
  List<Stat> stats = List.generate(
    6,
    (index) => Stat(baseStat: 0, name: " ", effort: 0),
  );
  @override
  Widget build(BuildContext context) {
    final pokemoDetailsRes = ref.watch(
      pokemonPageViewmodelProvider.select((s) {
        return s.pokemonInfo;
      }),
    );
    bool isLoding = pokemoDetailsRes.isLoading;

    final Widget content = pokemoDetailsRes.when(
      data: (PokemonModel data) {
        stats = data.stats;
        return _buildStatRows(stats, context, isLoding);
      },
      error: (Object error, StackTrace stackTrace) => Text(error.toString()),
      loading: () {
        return _buildStatRows(stats, context, isLoding);
      },
    );

    return content;
  }

  Widget _buildStatRows(
    List<Stat> stats,
    BuildContext context,
    bool isLoading,
  ) {
    return Skeletonizer(
      enabled: isLoading,
      effect: const ShimmerEffect(
        // use light shimmer on your dark background
        baseColor: Color.fromARGB(120, 255, 255, 255),
        highlightColor: Color.fromARGB(200, 255, 255, 255),
      ),
      child: Column(
        children: stats.map((e) {
          return StatRow(stat: e, isLoading: isLoading);
        }).toList(),
      ),
    );
  }
}

class StatRow extends StatelessWidget {
  final Stat stat;
  final bool isLoading;
  const StatRow({super.key, required this.stat, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    double barWidth =
        (stat.baseStat / 255) * MediaQuery.of(context).size.width * 0.5;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
      child: Row(
        children: [
          // Stat label (fixed width for alignment)
          Skeleton.keep(
            child: SizedBox(
              width: 50, // adjust to align nicely
              child: Text(
                statsLables[stat.name] ?? "null",
                style: const TextStyle(color: Colors.white),
              ),
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
                    color: const Color.fromARGB(60, 255, 255, 255),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),

                // Foreground (animated) bar
                Skeleton.leaf(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: 13,
                    width: barWidth,
                    decoration: BoxDecoration(
                      color: isLoading
                          ? Color.fromARGB(120, 255, 255, 255)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          // Stat value
          Text(
            stat.baseStat.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
