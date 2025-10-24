// ============================================================================
// 1. FIXED error.dart - Base error class (no changes needed here)
// ============================================================================
part 'exceptions.dart';

sealed class AppError implements Exception {
  final String message;
  final int? statusCode;
  final StackTrace? stackTrace;
  final bool retryable;
  final bool userFacing;

  const AppError({
    required this.message,
    this.statusCode,
    this.stackTrace,
    this.retryable = false,
    this.userFacing = true,
  });

  @override
  String toString() =>
      '${runtimeType.toString()}(message: $message, status: $statusCode, retryable: $retryable, userFacing: $userFacing)';
}
