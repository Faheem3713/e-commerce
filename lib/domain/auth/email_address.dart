import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/value_failures.dart';
import 'package:ecommerce/domain/core/value_objects.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailures<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(
    this.value,
  );
}

Either<ValueFailures<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailures.invalidEmail(failedValue: input));
  }
}
