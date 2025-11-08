// error.dart
part 'exceptions.dart'; // keep file partitioning if desired

sealed class AppError implements Exception {
  final String message; // developer/technical message
  final int? statusCode;
  final dynamic details; // raw payload, response body, exception object, etc.
  final StackTrace? stackTrace; // original stacktrace (optional)
  final bool retryable;
  final bool userFacing;

  const AppError({
    required this.message,
    this.statusCode,
    this.details,
    this.stackTrace,
    this.retryable = false,
    this.userFacing = false,
  });

  @override
  String toString() {
    return '$runtimeType (message: $message, status: $statusCode, userFacing: $userFacing, retryable: $retryable)';
  }
}


