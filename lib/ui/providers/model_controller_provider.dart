import 'package:flutter_riverpod/legacy.dart';
import 'package:pokedex_3d/data/providers/model_repository_provider.dart';
import 'package:pokedex_3d/ui/controller/model_controller.dart';

final modelControllerProvider = StateNotifierProvider<ModelController,bool>((ref) {
  return ModelController(
    modelRepository: ref.read(modelRepositoryProvider),
  
  );
});

