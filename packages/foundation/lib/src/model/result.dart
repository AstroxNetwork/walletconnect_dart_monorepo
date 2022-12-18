import 'dart:async';

import '../snippets.dart';

class Result<T> {
  final Object? _value;

  Result._(this._value);

  static FutureOr<Result<T>> runAsync<T>(AsyncSupplier<T> supplier) async {
    try {
      final obj = await supplier();
      return Result.success(obj);
    } catch (e, s) {
      return Result.failure(e, s);
    }
  }

  static Result<T> run<T>(Supplier<T> supplier) {
    try {
      final obj = supplier();
      return Result.success(obj);
    } catch (e, s) {
      return Result.failure(e, s);
    }
  }

  factory Result.success(T value) {
    return Result<T>._(value);
  }

  factory Result.failure(Object error, [StackTrace? stackTrace]) {
    return Result<T>._(newFailure(error, stackTrace));
  }

  T? getOrNull() => isFailure ? null : _value as T;

  T? getOrThrow() {
    throwOnFailure();
    return _value as T;
  }

  void throwOnFailure() {
    if (isFailure) throw Exception(_value);
  }

  Result<T> onFailure(OnError onError) {
    final value = _value;
    if (value is Failure) {
      onError.call(value.error, value.stackTrace);
    }
    return this;
  }

  @override
  String toString() {
    return isFailure ? _value.toString() : 'Success($_value)';
  }

  bool get isSuccess => _value is! Failure;

  bool get isFailure => _value is Failure;

  static Failure newFailure(Object error, [StackTrace? stackTrace]) =>
      Failure._(error, stackTrace);
}

class Failure {
  final Object error;
  final StackTrace? stackTrace;

  Failure._(this.error, [this.stackTrace]);

  @override
  String toString() {
    return 'SafeFailure(error: $error, stackTrace: $stackTrace)';
  }
}
