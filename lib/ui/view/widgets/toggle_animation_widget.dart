import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/model_controller_provider.dart';

class ToggleAnimationButton extends ConsumerWidget {
  const ToggleAnimationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlaying = ref.watch(model3dControllerProvider);

    return CircleAvatar(
      backgroundColor: Colors.white54,
      child: IconButton(
        icon: Icon(
          isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
          size: 20,
        ),
        onPressed: () {
          ref.read(model3dControllerProvider.notifier).toggleAnimation();
        },
        splashRadius: 24,
      ),
    );
  }
}
