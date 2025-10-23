import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/providers/service_providers.dart';
import 'package:pokedex_3d/data/repository/model_repository.dart';

final  modelRepositoryProvider = Provider<ModelRepository>((ref) {
  return ModelRepository(
    apiService: ref.read(apiServiceProvider),
    cacheManager: ref.read(modelCacheServiceProvider),
  );
});
