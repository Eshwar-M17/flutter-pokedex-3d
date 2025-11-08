import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:pokedex_3d/core/network/http_error_response_exception.dart';
import 'package:pokedex_3d/core/network/network_response.dart';

class HttpClientFactory {
  http.Client createClient() {
    return IOClient(HttpClient()..idleTimeout = Duration(seconds: 60));
  }
}

class NetworkClient {
  final http.Client client;
  NetworkClient({required this.client});

  Future<NetworkResponse> get({
    required Uri uri,
    Map<String, String>? headers,
  }) async {
    try {
      // log.i('network client fetching $uri,headers $headers');
      http.Response response = await client.get(uri, headers: headers);
      // log.i('response for $uri is ${response.statusCode}');

      if (response.statusCode == 304 || response.statusCode == 200) {
        return NetworkResponse.fromHttp(response, uri);
      }

      throw HttpErrorResponseException(
        statusCode: response.statusCode,
        headers: response.headers,
        uri: uri,
        body: response.body,
        reasonPhrase: response.reasonPhrase,
      );
    } on Exception {
      rethrow;
    }
  }

  void put({required String url, required Map headers}) {}
}
