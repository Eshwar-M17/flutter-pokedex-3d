import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/viewmodel/model_view_toggle.dart';

class ToggleModelViewWidget extends ConsumerWidget {
  const ToggleModelViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = ref.watch(toggleModelView);
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white54,

      child: IconButton(
        icon: Icon(
          view.isFullScreen
              ? Icons.fullscreen_exit_rounded
              : Icons.fullscreen_rounded,
        ),
        onPressed: () {
          ref
              .read(toggleModelView.notifier)
              .state = ref.read(toggleModelView).isFullScreen
              ? ModelView.fullscreenExit
              : ModelView.fullscreen;
        },
      ),
    );
  }
}
