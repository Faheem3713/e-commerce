import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailures<T> with _$ValueFailures {
  const factory ValueFailures.invalidEmail({required String failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailures.invalidPassword({required String failedValue}) =
      InvalidPassword<T>;
  const factory ValueFailures.invalidPhone({required String failedValue}) =
      InvalidPhone<T>;
}
