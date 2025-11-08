import 'package:pokedex_3d/core/errors/app_error.dart';

sealed class Result<T> {
  Result();
  factory Result.ok(T value) => Ok(value);
  factory Result.error(AppError e) => Error(e);
}

class Ok<T> extends Result<T> {
  Ok(this.value);
  final T value;
}

class Error<T> extends Result<T> {
  Error(this.error);
  final AppError error;
}
