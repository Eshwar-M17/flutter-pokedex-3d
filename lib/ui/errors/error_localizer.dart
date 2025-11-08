import 'package:pokedex_3d/core/errors/app_error.dart';
import 'package:pokedex_3d/ui/errors/ui_error_message.dart';

class ErrorLocalizer {
  static String fromAppError(AppError error) {
    switch (error) {
      // 🌐 Network-related
      case NoConnectionFailure():
        return UiErrorMessage.noConnection.message;
      case DnsFailure():
        return UiErrorMessage.dnsFailure.message;
      case NetworkFailure():
        return UiErrorMessage.networkFailure.message;

      // ⏱️ Timeout / Cancellation
      case TimeoutFailure():
        return UiErrorMessage.timeoutFailure.message;
      case CancellationFailure():
        return UiErrorMessage
            .unknown.message; // or create a dedicated 'cancelled' message if needed

      // 🔒 HTTP / Authorization
      case UnauthorizedFailure():
        return UiErrorMessage.unauthorized.message;
      case ForbiddenFailure():
        return UiErrorMessage.forbidden.message;
      case NotFoundFailure():
        return UiErrorMessage.notFound.message;
      case ValidationFailure():
        return UiErrorMessage.validation.message;
      case ConflictFailure():
        return UiErrorMessage.conflict.message;
      case RateLimitFailure():
        return UiErrorMessage.rateLimit.message;

      // 💥 Server-related
      case InternalServerFailure():
        return UiErrorMessage.internalServer.message;
      case ServiceUnavailableFailure():
        return UiErrorMessage.serviceUnavailable.message;
      case ServerFailure():
        return UiErrorMessage.server.message;

      // 🧩 Parsing / Unknown
      case ParsingFailure():
        return UiErrorMessage.parsing.message;
      case UnknownFailure():
        return UiErrorMessage.unknown.message;
    }
  }
}
