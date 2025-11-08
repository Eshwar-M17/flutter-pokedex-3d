import 'package:pokedex_3d/core/errors/error_mapper.dart';
import 'package:pokedex_3d/core/result/result.dart';

/// Runs [operation] and returns its result. If the operation throws, returns Result.error(...)


Future<Result<T>?> tryCacheOperation<T>(
  Future<Result<T>?> Function() operation,
) async {
  try {
    return await operation();
  } catch (e, st) {
    return Result<T>.error(ErrorMapper.mapException(e, st));
  }
}
