import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/model_controller_provider.dart';

class ToggleAnimationButton extends ConsumerWidget {
  const ToggleAnimationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlaying = ref.watch(model3dControllerProvider);

    return IconButton.filled(
      style: IconButton.styleFrom(
        backgroundColor: Theme.of(
          context,
        ).colorScheme.onInverseSurface.withAlpha(40),
      ),
      icon: Icon(
        isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
        size: 20,
        color: Theme.of(context).colorScheme.onInverseSurface.withAlpha(150),
      ),
      onPressed: () {
        ref.read(model3dControllerProvider.notifier).toggleAnimation();
      },
      splashRadius: 24,
    );
  }
}
