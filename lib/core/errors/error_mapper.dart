// ============================================================================
// 3. NEW error_mapper.dart - Maps exceptions to AppError
// ============================================================================

import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'error.dart';
import 'package:logger/logger.dart';

class ErrorMapper {
  static final log = Logger();

  /// Maps any exception to an appropriate AppError
  static AppError mapException(dynamic error, StackTrace? stackTrace) {
    log.e("mapException $error");
    // HTTP exceptions
    if (error is http.ClientException) {
      return NetworkFailure(
        message: 'Network error: ${error.message}',
        details: error,
        stackTrace: stackTrace,
      );
    }

    // Socket exceptions (no internet, DNS issues)
    if (error is SocketException) {
      if (error.osError?.errorCode ==
              7 || // No address associated with hostname
          error.osError?.errorCode == 8 || // nodename nor servname provided
          error.osError?.errorCode == -2 || // Name or service not known
          error.osError?.errorCode == 11001) {
        // getaddrinfo failed
        return DnsFailure(details: error, stackTrace: stackTrace);
      }
      return NoConnectionFailure(details: error, stackTrace: stackTrace);
    }

    // Timeout exceptions
    if (error is TimeoutException) {
      return TimeoutFailure(details: error, stackTrace: stackTrace);
    }

    // Format/Type exceptions during parsing
    if (error is FormatException || error is TypeError) {
      return ParsingFailure(
        message: 'Failed to parse response: ${error.toString()}',
        details: error,
        stackTrace: stackTrace,
      );
    }

    // Already an AppError
    if (error is AppError) {
      return error;
    }

    // Unknown error
    return UnknownFailure(
      message: error.toString(),
      details: error,
      stackTrace: stackTrace,
    );
  }

  /// Maps HTTP status codes to appropriate failures
  static AppError mapHttpStatus(int statusCode, String? body) {
    log.e("mapHttpStatus $statusCode $body");
    switch (statusCode) {
      case 400:
        return ValidationFailure(details: body);
      case 401:
        return UnauthorizedFailure(details: body);
      case 403:
        return ForbiddenFailure(details: body);
      case 404:
        return NotFoundFailure(details: body);
      case 409:
        return ConflictFailure(details: body);
      case 429:
        return RateLimitFailure(details: body);
      case >= 500 && < 600:
        if (statusCode == 500) {
          return InternalServerFailure(details: body);
        }
        if (statusCode == 503) {
          return ServiceUnavailableFailure(details: body);
        }
        return ServerFailure(statusCode: statusCode, details: body);
      default:
        return UnknownFailure(
          message: 'Unexpected status code: $statusCode',
          details: body,
        );
    }
  }
}
