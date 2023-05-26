import 'package:ecommerce/domain/core/failures/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/value_objects.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends ValueObject {
  @override
  final Either<ValueFailures<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhone(input));
  }

  PhoneNumber._(this.value);
}

Either<ValueFailures<String>, String> validatePhone(String input) {
  const phoneRegex =
      r'''((\+*)((0[ -]*)*|((91 )*))((\d{12})+|(\d{10})+))|\d{5}([- ]*)\d{6}''';
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailures.invalidPhone(failedValue: input));
  }
}
