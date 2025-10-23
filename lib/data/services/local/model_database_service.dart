
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ModelCacheManager {
  static const key = 'glbCache';

  static final instance = CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 30),
      maxNrOfCacheObjects: 200,
      repo: JsonCacheInfoRepository(databaseName: key),
    ),
  );
}

