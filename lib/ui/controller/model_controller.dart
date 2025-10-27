import 'package:flutter_riverpod/legacy.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/repository/model_repository.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Model3dController extends StateNotifier<bool> {
  final Model3dFileRepository _modelRepository;
  Model3dController({required Model3dFileRepository modelRepository})
    : _modelRepository = modelRepository,
      super(true);
  Model3dFileRepository get modelRepository => _modelRepository;
  WebViewController? _controller;
  set controller(WebViewController controller) => _controller = controller;
  final log = Logger();
  Future<Result<String>> updateModel(String modelUrl) async {
    state = true;

    final cacheResponse = await _modelRepository.getModelFile(modelUrl);
    switch (cacheResponse) {
      case Ok<String>():
        log.i("inside switch result ok 'file://${cacheResponse.value}'");

        return Result.ok(cacheResponse.value);

      case Error<String>():
        log.i("inside switch result error");

        return Result.error(cacheResponse.error);
    }
  }

  Future<void> notifyWebView() async {
    try {
      if (_controller != null) {
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        log.i('running controller');

        _controller?.runJavaScript(
          "document.querySelector('model-viewer').setAttribute('src', '/model?v=$timestamp');",
        );
      }
    } catch (e) {
      log.e(e.toString());
    }
  }

  void toggleAnimation() {
    if (state) {
      pauseAnimation();
    } else {
      playAnimation();
    }
  }

  void playAnimation() {
    state = true;

    _controller?.runJavaScript(
      "document.querySelector('model-viewer').play();",
    );
  }

  void pauseAnimation() {
    state = false;

    _controller?.runJavaScript(
      "document.querySelector('model-viewer').pause();",
    );
  }
}
