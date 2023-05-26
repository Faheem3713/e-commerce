import 'package:ecommerce/domain/core/failures/value_failures.dart';

class UnexpectedErrors extends Error {
  final ValueFailures _valueFailures;
  UnexpectedErrors(this._valueFailures);
  @override
  String toString() {
    return Error.safeToString('Its Error $_valueFailures');
  }
}
