import 'package:ecommerce/domain/core/failures/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/value_objects.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailures<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

Either<ValueFailures<String>, String> validatePassword(String input) {
  if (input.length < 6) {
    return left(ValueFailures.invalidPassword(failedValue: input));
  } else {
    return right(input);
  }
}
