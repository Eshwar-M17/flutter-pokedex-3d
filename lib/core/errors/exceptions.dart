// exceptions.dart
// Part file for `error.dart`
// Provides concrete AppError subclasses and the UiErrorMessage enum.

part of 'error.dart';

/// Centralized UI messages enum (optional — you can localize later).
 enum UiErrorMessage {
  noConnection('You’re offline. Please connect to the Internet and try again.'),
  dnsFailure('Couldn’t reach the server. Please check your Internet connection.'),
  networkFailure('A network error occurred. Please check your connection and try again.'),
  timeoutFailure('The request took too long. Please try again.'),
  unauthorized('Your session has expired. Please log in again.'),
  forbidden('You don’t have permission to perform this action.'),
  notFound('The requested item was not found.'),
  validation('Some fields are invalid. Please check your input and try again.'),
  conflict('This item already exists or conflicts with another record.'),
  rateLimit('Too many requests. Please wait a few seconds and try again.'),
  internalServer('Something went wrong on our side. Please try again later.'),
  serviceUnavailable('The service is temporarily unavailable. Please try again later.'),
  server('The server encountered an error. Please try again later.'),
  parsing('Something went wrong while processing data.'),
  unknown('An unexpected error occurred. Please try again later.');

  final String message;
  const UiErrorMessage(this.message);
}

/* =========================
   Network-related failures
   ========================= */

/// Generic network failure (connectivity / DNS / TLS).
final class NetworkFailure extends AppError {
  const NetworkFailure({
    super.message = 'Network error',
    super.statusCode,
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
    super.retryable = true,
    super.userFacing = true,
  });
}

/// No internet connection specifically.
final class NoConnectionFailure extends NetworkFailure {
 const   NoConnectionFailure({
    super.message = 'No internet connection',
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: true, userFacing: true);
}

/// DNS lookup or TLS handshake error.
final class DnsFailure extends NetworkFailure {
  const DnsFailure({
    super.message = 'DNS / handshake failure',
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: true, userFacing: true);
}

/* =========================
   Timeout / cancellation
   ========================= */

final class TimeoutFailure extends AppError {
  const TimeoutFailure({
    super.message = 'Request timed out',
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
    super.retryable = true,
    super.userFacing = true,
  });
}

/// Request was cancelled (user or code).
final class CancellationFailure extends AppError {
  const CancellationFailure({
    super.message = 'Request cancelled',
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
    super.retryable = false,
    super.userFacing = false,
  });
}

/* =========================
   HTTP / Server failures
   ========================= */

sealed class HttpFailure extends AppError {
  const HttpFailure({
    required super.message,
    super.statusCode,
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
    super.retryable = false,
    super.userFacing = true,
  });
}

final class UnauthorizedFailure extends HttpFailure {
  const UnauthorizedFailure({
    super.message = 'Unauthorized',
    super.statusCode = 401,
    super.userMessage ,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: true);
}

final class ForbiddenFailure extends HttpFailure {
  const ForbiddenFailure({
    super.message = 'Forbidden',
    super.statusCode = 403,
    super.userMessage ,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: true);
}

final class NotFoundFailure extends HttpFailure {
  const NotFoundFailure({
    super.message = 'Not found',
    super.statusCode = 404,
    super.userMessage ,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: true);
}

/// Validation / bad request. Contains optional field-level errors.
final class ValidationFailure extends HttpFailure {
  final Map<String, dynamic>? fieldErrors;

  const ValidationFailure({
    super.message = 'Validation failed',
    super.statusCode = 400,
    this.fieldErrors,
    super.userMessage ,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: true);

  @override
  String toString() => '${super.toString()} fieldErrors: ${fieldErrors ?? 'none'}';
}

final class ConflictFailure extends HttpFailure {
  const ConflictFailure({
    super.message = 'Conflict',
    super.statusCode = 409,
    super.userMessage ,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: true);
}

/// 429 Too Many Requests — may include retry-after seconds.
final class RateLimitFailure extends HttpFailure {
  final int? retryAfterSeconds;

  const RateLimitFailure({
    super.message = 'Too many requests',
    super.statusCode = 429,
    this.retryAfterSeconds,
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: true, userFacing: true);

  @override
  String toString() => '${super.toString()} retryAfter: $retryAfterSeconds';
}

/* =========================
   Server failures (5xx)
   ========================= */

final class ServerFailure extends HttpFailure {
  const ServerFailure({
    super.message = 'Server error',
    super.statusCode,
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  }) : super(retryable: true, userFacing: true);
}

final class InternalServerFailure extends ServerFailure {
  const InternalServerFailure({
    super.message = 'Internal server error',
    super.statusCode = 500,
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  });
}

final class ServiceUnavailableFailure extends ServerFailure {
  const ServiceUnavailableFailure({
    super.message = 'Service unavailable',
    super.statusCode = 503,
    super.userMessage ,
    super.userMessageKey,
    super.details,
    super.stackTrace,
  });
}

/* =========================
   Parsing / domain / unknown
   ========================= */

final class ParsingFailure extends AppError {
  const ParsingFailure({
    super.message = 'Parsing / serialization error',
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
    super.retryable = false,
    super.userFacing = false,
  });
}

final class UnknownFailure extends AppError {
  const UnknownFailure({
    super.message = 'Unknown error',
    super.userMessage,
    super.userMessageKey,
    super.details,
    super.stackTrace,
    super.retryable = false,
    super.userFacing = false,
  });
}
