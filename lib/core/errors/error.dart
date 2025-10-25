// error.dart
part 'exceptions.dart'; // keep file partitioning if desired

sealed class AppError implements Exception {
  final String message; // developer/technical message
  final int? statusCode;
  final String? userMessage; // optional server-provided UI text (NOT localized)
  final String? userMessageKey; // optional key for localization (preferred)
  final dynamic details; // raw payload, response body, exception object, etc.
  final StackTrace? stackTrace; // original stacktrace (optional)
  final bool retryable;
  final bool userFacing;

  const AppError({
    required this.message,
    this.statusCode,
    this.userMessage,
    this.userMessageKey,
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
