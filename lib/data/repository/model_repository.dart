import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/core/utils/safe_network_call.dart';
import 'package:pokedex_3d/core/utils/try_cache_operation.dart';
import 'package:pokedex_3d/data/services/remote/api_service.dart';

class Model3dFileRepository {
  final log = Logger();
  final CacheManager _cacheManager;
  final ApiService _apiservice;
  Model3dFileRepository({
    required ApiService apiService,
    required CacheManager cacheManager,
  }) : _cacheManager = cacheManager,
       _apiservice = apiService;

  Future<Result<String>> getModelFile(String url) async {
    log.i('inside 3d model file repository fetching model');

    final cacheResponse = await tryCacheOperation<String>(() async {
      FileInfo? fileInfo = await _cacheManager.getFileFromCache(url);
      if (fileInfo != null) {
        return Result<String>.ok(fileInfo.file.path);
      }
      return null; // cache miss
    });
    if (cacheResponse != null) {
      return cacheResponse;
    }

    // if cache missed fetch from network

    return safeNetworkCall(
      networkCall: () async {
        return await _apiservice.getModelFile(url);
      },
      mapResponse: (response) async {
        if(response.statusCode==304){
          

        }
        if (response.statusCode == 200) {
          final file = await _cacheManager.putFile(url, response.bytes!);
          return Result.ok(file.path);
        }
        return null;
      },
    );
  }
}
