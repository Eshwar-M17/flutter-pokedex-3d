import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/viewmodel/fullscreen_toggle.dart';

class FullscreenToggleButton extends ConsumerWidget {
  const FullscreenToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = ref.watch(fullscreenToggleProvider);
    return IconButton.filled(
      style: IconButton.styleFrom(
        backgroundColor: Theme.of(
          context,
        ).colorScheme.onInverseSurface.withAlpha(40),
      ),
      icon: Icon(
        view.isFullScreen
            ? Icons.fullscreen_exit_rounded
            : Icons.fullscreen_rounded,
        color: Theme.of(context).colorScheme.onInverseSurface.withAlpha(200),
      ),
      onPressed: () {
        ref
            .read(fullscreenToggleProvider.notifier)
            .state = ref.read(fullscreenToggleProvider).isFullScreen
            ? FullscreenState.fullscreenExit
            : FullscreenState.fullscreen;
      },
    );
  }
}
