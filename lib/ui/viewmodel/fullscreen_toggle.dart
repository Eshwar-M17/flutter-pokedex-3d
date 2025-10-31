import 'package:flutter_riverpod/legacy.dart';

enum FullscreenState {
  fullscreen(true), // Icon for entering full screen mode
  fullscreenExit(false);

  final bool isFullScreen;
  const FullscreenState(this.isFullScreen);
}

final fullscreenToggleProvider = StateProvider<FullscreenState>((ref) {
  return FullscreenState.fullscreen;
});
