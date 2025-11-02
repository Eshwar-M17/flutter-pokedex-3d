import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/errors/error_mapper.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class Model3dFileRepository {
  final log = Logger();
  final CacheManager _cacheManager;
  final ApiService _apiservice;
  Model3dFileRepository({required ApiService apiService, required cacheManager})
    : _cacheManager = cacheManager,
      _apiservice = apiService;

  Future<Result<String>> getModelFile(String url) async {
    log.i('inside 3d model file repository fetching model');

    try {
      FileInfo? fileInfo = await _cacheManager.getFileFromCache(url);
      if (fileInfo != null) {
        return Result.ok(fileInfo.file.path);
      }
      final response = await _apiservice.getModelFile(url);
      log.i("model respone recived ${response.statusCode}");

      if (response.statusCode == 200) {
        final file = await _cacheManager.putFile(url, response.bodyBytes);
        return Result.ok(file.path);
      }
      return Result.error(ErrorMapper.mapHttpResponse(response));
    } catch (e, st) {
      return Result.error(ErrorMapper.mapException(e, st));
    }
  }
}
