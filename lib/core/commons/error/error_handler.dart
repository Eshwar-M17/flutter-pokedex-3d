import 'package:http/http.dart' as http;

import 'package:pokedex_3d/core/result.dart';

class ErrorHandler {
 static Future<Result<T>> call<T>(
    Future<http.Response> Function() api,
    Future<T> Function(dynamic) parse,
  ) async {
    try {
      http.Response response = await api();
      if (response.statusCode == 200) {
        try {
          return Result.ok(await parse(response.body));
        } catch (e) {
          return Result.error(Exception(e));
        }
      }
      throw response.reasonPhrase ?? response.body;
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
