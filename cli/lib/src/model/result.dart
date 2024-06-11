import 'dart:io';

sealed class Result<T> {
  Result._();

  factory Result.success(T value) = Success<T>._;

  factory Result.failure(ProcessResult processResult) = Failure<T>._;
}

final class Success<T> extends Result<T> {
  Success._(this.value) : super._();

  final T value;
}

final class Failure<T> extends Result<T> {
  Failure._(this.processResult) : super._();

  final ProcessResult processResult;
}
