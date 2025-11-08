import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkResponse {
  final int statusCode;
  final String? body;
  final Uint8List? bytes;
  final Map<String, String> headers;
  final Uri uri;
  final bool notModified;
  final Duration? duration;
  String? get etag => headers['etag'];
  final String? message;
  NetworkResponse({
    required this.statusCode,
    this.body,
    this.bytes,
    required this.headers,
    required this.uri,
    this.notModified = false,
    this.duration,
    this.message,
  });

  /// Convenience flag for quick success check.
  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  /// Factory to easily build from `http.Response`.
  factory NetworkResponse.fromHttp(
    http.Response response,
    Uri uri, {
    Duration? duration,
  }) {
    return NetworkResponse(
      statusCode: response.statusCode,
      body: response.body,
      bytes: response.bodyBytes,
      headers: response.headers,
      uri: uri,
      duration: duration,
      notModified: response.statusCode == 304,
    );
  }
}
