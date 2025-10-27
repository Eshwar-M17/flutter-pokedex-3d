import 'package:flutter_riverpod/legacy.dart';
import 'package:pokedex_3d/data/providers/model_repository_provider.dart';
import 'package:pokedex_3d/ui/controller/model_controller.dart';

final model3dControllerProvider =
    StateNotifierProvider<Model3dController, bool>((ref) {
      return Model3dController(
        modelRepository: ref.read(model3dFileRepositoryProvider),
      );
    });
