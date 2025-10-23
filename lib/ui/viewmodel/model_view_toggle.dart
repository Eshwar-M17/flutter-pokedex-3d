import 'package:flutter_riverpod/legacy.dart';

enum ModelView {
  fullscreen(true), // Icon for entering full screen mode
  fullscreenExit(false);

  final bool isFullScreen;
  const ModelView(this.isFullScreen);
}

final toggleModelView = StateProvider<ModelView>((ref) {
  return ModelView.fullscreenExit;
});
