// exceptions.dart
// Part file for `error.dart`
// Provides concrete AppError subclasses and the UiErrorMessage enum.

/// Centralized UI messages enum (optional — you can localize later).
enum UiErrorMessage {
  noConnection('You’re offline. Please connect to the Internet and try again.'),
  dnsFailure(
    'Couldn’t reach the server. Please check your Internet connection.',
  ),
  networkFailure(
    'A network error occurred. Please check your connection and try again.',
  ),
  timeoutFailure('The request took too long. Please try again.'),
  unauthorized('Your session has expired. Please log in again.'),
  forbidden('You don’t have permission to perform this action.'),
  notFound('The requested item was not found.'),
  validation('Some fields are invalid. Please check your input and try again.'),
  conflict('This item already exists or conflicts with another record.'),
  rateLimit('Too many requests. Please wait a few seconds and try again.'),
  internalServer('Something went wrong on our side. Please try again later.'),
  serviceUnavailable(
    'The service is temporarily unavailable. Please try again later.',
  ),
  server('The server encountered an error. Please try again later.'),
  parsing('Something went wrong while processing data.'),
  unknown('An unexpected error occurred. Please try again later.');
  final String message;
  const UiErrorMessage(this.message);
}
