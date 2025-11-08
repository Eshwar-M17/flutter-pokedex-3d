/// Represents a non-2xx HTTP response (like 400, 401, 500, etc.)
class HttpErrorResponseException implements Exception {
  final int statusCode;
  final String? body;
  final Map<String, String> headers;
  final Uri uri;
  final String? reasonPhrase;

  const HttpErrorResponseException({
    required this.statusCode,
    required this.headers,
    required this.uri,
    this.body,
    this.reasonPhrase,
  });

  @override
  String toString() =>
      'HttpErrorResponseException($statusCode $reasonPhrase) for $uri';
}
