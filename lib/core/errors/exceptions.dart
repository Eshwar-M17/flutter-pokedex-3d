
// ============================================================================
// 2. FIXED exceptions.dart - Added details field consistently
// ============================================================================
part of 'error.dart';

/* =========================
   Network-related failures
   ========================= */

/// Generic network failure (connectivity / DNS / TLS).
final class NetworkFailure extends AppError {
  final dynamic details;
  
  const NetworkFailure({
    super.message = 'Network error',
    super.statusCode,
    super.stackTrace,
    super.retryable = true,
    super.userFacing,
    this.details,
  });

  @override
  String toString() => '${super.toString()} details: ${details ?? 'none'}';
}

/// No internet connection specifically.
final class NoConnectionFailure extends NetworkFailure {
  const NoConnectionFailure({
    super.message = 'No Internet connection',
    super.details,
    super.stackTrace,
  }) : super(retryable: true);
}

/// DNS lookup or TLS handshake error.
final class DnsFailure extends NetworkFailure {
  const DnsFailure({
    super.message = 'DNS / handshake failure',
    super.details,
    super.stackTrace,
  }) : super(retryable: true);
}

/* =========================
   Timeout / cancellation
   ========================= */

final class TimeoutFailure extends AppError {
  final dynamic details;
  
  const TimeoutFailure({
    super.message = 'Request timed out',
    this.details,
    super.stackTrace,
  }) : super(retryable: true, userFacing: true);

  @override
  String toString() => '${super.toString()} details: ${details ?? 'none'}';
}

/// Request was cancelled (user or code).
final class CancellationFailure extends AppError {
  const CancellationFailure({
    super.message = 'Request cancelled',
    super.stackTrace,
  }) : super(retryable: false, userFacing: false);
}

/* =========================
   HTTP / Server failures
   ========================= */

sealed class HttpFailure extends AppError {
  final dynamic details;
  
  const HttpFailure({
    required super.message,
    super.statusCode,
    super.stackTrace,
    super.retryable,
    super.userFacing,
    this.details,
  });

  @override
  String toString() => '${super.toString()} details: ${details ?? 'none'}';
}

final class UnauthorizedFailure extends HttpFailure {
  const UnauthorizedFailure({
    super.message = 'Unauthorized',
    super.statusCode = 401,
    super.stackTrace,
    super.details,
  }) : super(retryable: false, userFacing: true);
}

final class ForbiddenFailure extends HttpFailure {
  const ForbiddenFailure({
    super.message = 'Forbidden',
    super.statusCode = 403,
    super.stackTrace,
    super.details,
  }) : super(retryable: false, userFacing: true);
}

final class NotFoundFailure extends HttpFailure {
  const NotFoundFailure({
    super.message = 'Not found',
    super.statusCode = 404,
    super.stackTrace,
    super.details,
  }) : super(retryable: false, userFacing: true);
}

/// Validation / bad request. Contains optional field-level errors.
final class ValidationFailure extends HttpFailure {
  final Map<String, dynamic>? fieldErrors;
  
  const ValidationFailure({
    super.message = 'Validation failed',
    super.statusCode = 400,
    this.fieldErrors,
    super.stackTrace,
    super.details,
  }) : super(retryable: false, userFacing: true);

  @override
  String toString() =>
      '${super.toString()} fieldErrors: ${fieldErrors?.toString() ?? 'none'}';
}

final class ConflictFailure extends HttpFailure {
  const ConflictFailure({
    super.message = 'Conflict',
    super.statusCode = 409,
    super.stackTrace,
    super.details,
  }) : super(retryable: false, userFacing: true);
}

/// 429 Too Many Requests — may include retry-after seconds.
final class RateLimitFailure extends HttpFailure {
  final int? retryAfterSeconds;
  
  const RateLimitFailure({
    super.message = 'Too many requests',
    super.statusCode = 429,
    this.retryAfterSeconds,
    super.stackTrace,
    super.details,
  }) : super(retryable: true, userFacing: true);

  @override
  String toString() => '${super.toString()} retryAfter: $retryAfterSeconds';
}

/// Generic 5xx server error
final class ServerFailure extends HttpFailure {
  const ServerFailure({
    super.message = 'Server error',
    super.statusCode,
    super.stackTrace,
    super.details,
  }) : super(retryable: true, userFacing: true);
}

/// Specific 500 internal server error
final class InternalServerFailure extends ServerFailure {
  const InternalServerFailure({
    super.message = 'Internal server error',
    super.statusCode = 500,
    super.stackTrace,
    super.details,
  });
}

final class ServiceUnavailableFailure extends ServerFailure {
  const ServiceUnavailableFailure({
    super.message = 'Service unavailable',
    super.statusCode = 503,
    super.stackTrace,
    super.details,
  });
}

/* =========================
   Parsing / domain / unknown
   ========================= */

final class ParsingFailure extends AppError {
  final dynamic details;
  
  const ParsingFailure({
    super.message = 'Parsing / serialization error',
    this.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: false);

  @override
  String toString() => '${super.toString()} details: ${details ?? 'none'}';
}

final class UnknownFailure extends AppError {
  final dynamic details;
  
  const UnknownFailure({
    super.message = 'Unknown error',
    this.details,
    super.stackTrace,
  }) : super(retryable: false, userFacing: false);

  @override
  String toString() => '${super.toString()} details: ${details ?? 'none'}';
}
