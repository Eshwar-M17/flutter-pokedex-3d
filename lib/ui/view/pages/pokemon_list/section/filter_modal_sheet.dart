import 'package:flutter/material.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/widgets/filter_section.dart';

class FilterModalSheet extends StatelessWidget {
  const FilterModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withAlpha(25),
            offset: const Offset(0, -4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Colors.black.withAlpha(10),
            offset: const Offset(0, -6),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: FilterSection(),
    );
  }
}
