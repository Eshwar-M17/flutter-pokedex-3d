import 'package:pokedex_3d/core/errors/error_mapper.dart';
import 'package:pokedex_3d/core/network/http_error_response_exception.dart';
import 'package:pokedex_3d/core/network/network_response.dart';
import 'package:pokedex_3d/core/result/result.dart';

Future<Result<T>> safeNetworkCall<T>({
  required Future<NetworkResponse> Function() networkCall,
  required Future<Result<T>?> Function(NetworkResponse response) mapResponse,
}) async {
  try {
    final response = await networkCall();
    final mapped = await mapResponse(response);
    if (mapped != null) return mapped;

    // prefer using response.requestUri / response.uri if available
    throw HttpErrorResponseException(
      statusCode: response.statusCode,
      headers: response.headers,
      uri: response.uri,
    );
  } on HttpErrorResponseException catch (e) {
    return Result<T>.error(ErrorMapper.mapHttpException(e));
  } catch (e, st) {
    return Result<T>.error(ErrorMapper.mapException(e, st));
  }
}
