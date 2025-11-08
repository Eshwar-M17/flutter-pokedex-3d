import 'package:flutter/material.dart';

class AnimatedDotWidget extends StatelessWidget {
  final VoidCallback onTap;
  final bool isActive;
  const AnimatedDotWidget({
    super.key,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        width: isActive ? 40 : 20,
        height: 20,
        curve: Curves.easeInOut,

        margin: const EdgeInsets.symmetric(horizontal: 4),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(
              context,
            ).colorScheme.onInverseSurface.withAlpha(150),
            width: 2,
          ),
          color: isActive
              ? Theme.of(context).colorScheme.onInverseSurface
              : null,
        ),
      ),
    );
  }
}
