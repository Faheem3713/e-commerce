part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
          {required EmailAddress email,
          required bool isLoading,
          required AutovalidateMode autoValidate,
          required Password password,
          required PhoneNumber phone,
          required bool showErrorMessage,
          required bool isSubmitting,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _AuthState;
  factory AuthState.initial() => AuthState(
      isLoading: false,
      autoValidate: AutovalidateMode.disabled,
      phone: PhoneNumber(''),
      email: EmailAddress(''),
      password: Password(''),
      showErrorMessage: false,
      isSubmitting: false,
      authFailureOrSuccess: none());
}
