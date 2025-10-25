// error_mapper.dart
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

import 'error.dart'; // Adjust the path to where your AppError / UiErrorMessage are defined

class ErrorMapper {
  const ErrorMapper._();
  static final log = Logger();

  /// Map any thrown [error] (exceptions or an http.Response thrown by caller)
  /// to an [AppError] that your repository/ViewModel can consume.
  static AppError mapException(Object error, [StackTrace? stackTrace]) {
    log.e(error.toString());
    // If already an AppError, return as-is.
    if (error is AppError) return error;

 if (error is http.ClientException) {
  final msg = error.message.toLowerCase();
  if (msg.contains('failed host lookup') ||
      msg.contains('getaddrinfo failed')) {
    return NoConnectionFailure(
      message: 'No Internet connection',
      userMessage: UiErrorMessage.noConnection.message,
      stackTrace: stackTrace,
    );
  }
  return NetworkFailure(
    message: 'Network error: ${error.message}',
    userMessage: UiErrorMessage.networkFailure.message,
    stackTrace: stackTrace,
  );
}


  // SocketException directly
  if (error is SocketException) return _mapSocket(error, stackTrace);

    // SocketException (no internet, DNS, TLS handshake)
  

    // TimeoutException
    if (error is TimeoutException) {
      return TimeoutFailure(
        message: 'Timeout: ${error.message ?? 'Request timed out'}',
        userMessage: UiErrorMessage.timeoutFailure.message,
        details: error,
        stackTrace: stackTrace,
      );
    }

    // HTTP-level exceptions from dart:io
    if (error is HttpException) {
      return NetworkFailure(
        message: 'HttpException: ${error.message}',
        userMessage: UiErrorMessage.networkFailure.message,
        details: error,
        stackTrace: stackTrace,
      );
    }

    // Client format/parse errors
    if (error is FormatException ||
        error is TypeError ||
        error is JsonUnsupportedObjectError) {
      return ParsingFailure(
        message: 'Parsing error: ${error.toString()}',
        userMessage: UiErrorMessage.parsing.message,
        details: error,
        stackTrace: stackTrace,
      );
    }

    // Fallback - unknown error
    return UnknownFailure(
      message: error?.toString() ?? 'Unknown error',
      userMessage: UiErrorMessage.unknown.message,
      details: error,
      stackTrace: stackTrace,
    );
  }

  
static AppError _mapSocket(SocketException socket, StackTrace? st) {
  final code = socket.osError?.errorCode;
  if (code == 7 || code == 8 || code == -2 || code == 11001) {
    return DnsFailure(
      message: 'DNS / handshake failure: ${socket.message}',
      userMessage: UiErrorMessage.dnsFailure.message,
      stackTrace: st,
    );
  }
  return NoConnectionFailure(
    message: 'No Internet connection: ${socket.message}',
    userMessage: UiErrorMessage.noConnection.message,
    stackTrace: st,
  );
}

  /// Map a non-2xx [http.Response] to an [AppError].
  /// Call this when you receive a response with status >= 400.
  static AppError mapHttpResponse(
    http.Response resp, [
    StackTrace? stackTrace,
  ]) {
        log.e(resp.toString());

    final int status = resp.statusCode;
    final dynamic decoded = _tryDecodeBody(resp.body);
    final details = {
      'bodyRaw': resp.body,
      'body': decoded,
      'headers': resp.headers,
      'reasonPhrase': resp.reasonPhrase,
    };

    // Extract candidate server message and field errors if present
    final String? serverMessage = _extractMessage(decoded);
    final Map<String, dynamic>? fieldErrors = _extractFieldErrors(decoded);

    // 400 Bad Request -> Validation
    if (status == 400) {
      return ValidationFailure(
        message: serverMessage ?? 'Bad request',
        statusCode: 400,
        fieldErrors: fieldErrors,
        userMessage: UiErrorMessage.validation.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    if (status == 401) {
      return UnauthorizedFailure(
        message: serverMessage ?? 'Unauthorized',
        statusCode: 401,
        userMessage: UiErrorMessage.unauthorized.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    if (status == 403) {
      return ForbiddenFailure(
        message: serverMessage ?? 'Forbidden',
        statusCode: 403,
        userMessage: UiErrorMessage.forbidden.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    if (status == 404) {
      return NotFoundFailure(
        message: serverMessage ?? 'Not found',
        statusCode: 404,
        userMessage: UiErrorMessage.notFound.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    if (status == 409) {
      return ConflictFailure(
        message: serverMessage ?? 'Conflict',
        statusCode: 409,
        userMessage: UiErrorMessage.conflict.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    if (status == 429) {
      final int? retryAfter = _parseRetryAfter(resp.headers['retry-after']);
      return RateLimitFailure(
        message: serverMessage ?? 'Too many requests',
        statusCode: 429,
        retryAfterSeconds: retryAfter,
        userMessage: UiErrorMessage.rateLimit.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    if (status >= 500 && status < 600) {
      if (status == 500) {
        return InternalServerFailure(
          message: serverMessage ?? 'Internal server error',
          statusCode: 500,
          userMessage: UiErrorMessage.internalServer.message,
          details: details,
          stackTrace: stackTrace,
        );
      }
      if (status == 503) {
        return ServiceUnavailableFailure(
          message: serverMessage ?? 'Service unavailable',
          statusCode: 503,
          userMessage: UiErrorMessage.serviceUnavailable.message,
          details: details,
          stackTrace: stackTrace,
        );
      }
      return ServerFailure(
        message: serverMessage ?? 'Server error',
        statusCode: status,
        userMessage: UiErrorMessage.server.message,
        details: details,
        stackTrace: stackTrace,
      );
    }

    // Default fallback for other codes
    return UnknownFailure(
      message: serverMessage ?? 'Unexpected HTTP status: $status',
      userMessage: UiErrorMessage.unknown.message,
      details: details,
      stackTrace: stackTrace,
    );
  }

  /* ---------------------------
     Helper utilities
     --------------------------- */

  static dynamic _tryDecodeBody(String? body) {
    if (body == null || body.isEmpty) return null;
    try {
      return jsonDecode(body);
    } catch (_) {
      return body;
    }
  }

  static String? _extractMessage(dynamic decodedBody) {
    try {
      if (decodedBody == null) return null;
      if (decodedBody is String && decodedBody.isNotEmpty) return decodedBody;
      if (decodedBody is Map) {
        if (decodedBody['message'] != null)
          return decodedBody['message'].toString();
        if (decodedBody['error'] != null)
          return decodedBody['error'].toString();
        if (decodedBody['detail'] != null)
          return decodedBody['detail'].toString();
      }
    } catch (_) {
      // ignore
    }
    return null;
  }

  static Map<String, dynamic>? _extractFieldErrors(dynamic decodedBody) {
    try {
      if (decodedBody is Map) {
        // common shapes: { "errors": { "field": "msg" } } or { "field": ["msg1","msg2"] }
        if (decodedBody['errors'] is Map) {
          return Map<String, dynamic>.from(decodedBody['errors'] as Map);
        }
        // sometimes API returns validation directly as map
        if (decodedBody['fieldErrors'] is Map) {
          return Map<String, dynamic>.from(decodedBody['fieldErrors'] as Map);
        }
      }
    } catch (_) {}
    return null;
  }

  static int? _parseRetryAfter(String? header) {
    if (header == null) return null;
    final seconds = int.tryParse(header);
    if (seconds != null) return seconds;
    // header can be HTTP-date — consider parsing if needed
    return null;
  }
}
