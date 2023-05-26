import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/errors/unexpected_error.dart';
import 'package:flutter/foundation.dart';
import 'failures/value_failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailures<T>, T> get value;

  getOrCrash() {
    return value.fold((l) => UnexpectedErrors(l), id);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  bool isValid() => value.isRight();
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
