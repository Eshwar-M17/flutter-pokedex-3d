import 'dart:async';
import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class ModelRepository {
  final log = Logger();
  final CacheManager _cacheManager;
  ModelRepository({required ApiService apiService, required cacheManager})
    : _cacheManager = cacheManager;

  Future<Result<String>> getModelFile(String url) async {
    log.i('inside model repository fetching model');
    try {
      final File modelFileInfo = await _cacheManager.getSingleFile(url);

      log.i('model fetched by cache manager');
      return Result.ok(modelFileInfo.path);
    } catch (e) {
      log.e(e.toString());
      return Result.error(Exception(e));
    }
  }
}
