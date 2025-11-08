part of 'app_error.dart';


/* =========================
   Network-related failures
   ========================= */

/// Generic network failure (connectivity / DNS / TLS).
final class NetworkFailure extends AppError {
  const NetworkFailure({
    super.message = 'Network error',
    super.details,
    super.stackTrace,
    super.retryable = true,
    super.userFacing = true,
  });
}

/// No internet connection specifically.
final class NoConnectionFailure extends NetworkFailure {
  const NoConnectionFailure({
    super.message = 'No internet connection',
    super.details,
    super.stackTrace,
    super.retryable = true,
    super.userFacing = true,
  });
}

/// DNS lookup or TLS handshake error.
final class DnsFailure extends NetworkFailure {
  const DnsFailure({
    super.message = 'DNS / handshake failure',
    super.details,
    super.stackTrace,
    super.retryable = true,
    super.userFacing = true,
  });
}

/* =========================
   Timeout / cancellation
   ========================= */

final class TimeoutFailure extends AppError {
  const TimeoutFailure({
    super.message = 'Request timed out',
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
    super.details,
    super.retryable = false,
    super.userFacing = true,
  });
}

final class UnauthorizedFailure extends HttpFailure {
  const UnauthorizedFailure({
    super.message = 'Unauthorized',
    super.statusCode = 401,
    super.details,
    super.retryable = false,
    super.userFacing = true,
  });
}

final class ForbiddenFailure extends HttpFailure {
  const ForbiddenFailure({
    super.message = 'Forbidden',
    super.statusCode = 403,
    super.details,
    super.retryable = false,
    super.userFacing = true,
  });
}

final class NotFoundFailure extends HttpFailure {
  const NotFoundFailure({
    super.message = 'Not found',
    super.statusCode = 404,
    super.details,
    super.retryable = false,
    super.userFacing = true,
  });
}

/// Validation / bad request. Contains optional field-level errors.
final class ValidationFailure extends HttpFailure {
  final Map<String, dynamic>? fieldErrors;

  const ValidationFailure({
    super.message = 'Validation failed',
    super.statusCode = 400,
    super.details,
    this.fieldErrors,
    super.retryable = false,
    super.userFacing = true,
  });

  @override
  String toString() =>
      '${super.toString()} fieldErrors: ${fieldErrors ?? 'none'}';
}

final class ConflictFailure extends HttpFailure {
  const ConflictFailure({
    super.message = 'Conflict',
    super.statusCode = 409,
    super.details,
    super.retryable = false,
    super.userFacing = true,
  });
}

/// 429 Too Many Requests — may include retry-after seconds.
final class RateLimitFailure extends HttpFailure {
  final int? retryAfterSeconds;

  const RateLimitFailure({
    super.message = 'Too many requests',
    super.statusCode = 429,
    this.retryAfterSeconds,
    super.details,
    super.retryable = true,
    super.userFacing = true,
  });

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
    super.details,
    super.retryable = true,
    super.userFacing = true,
  });
}

final class InternalServerFailure extends ServerFailure {
  const InternalServerFailure({
    super.message = 'Internal server error',
    super.statusCode = 500,
    super.details,
  });
}

final class ServiceUnavailableFailure extends ServerFailure {
  const ServiceUnavailableFailure({
    super.message = 'Service unavailable',
    super.statusCode = 503,
    super.details,
  });
}

/* =========================
   Parsing / domain / unknown
   ========================= */

final class ParsingFailure extends AppError {
  const ParsingFailure({
    super.message = 'Parsing / serialization error',

    super.details,
    super.stackTrace,
    super.retryable = false,
    super.userFacing = false,
  });
}

final class UnknownFailure extends AppError {
  const UnknownFailure({
    super.message = 'Unknown error',
    super.details,
    super.stackTrace,
    super.retryable = false,
    super.userFacing = false,
  });
}
