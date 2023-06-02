part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String passwordStr) =
      _PassWordChanged;
  const factory AuthEvent.signIn(
      {required String email, required String password}) = _SignIn;
  const factory AuthEvent.register(
      {required String email, required String password}) = _Register;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;

  const factory AuthEvent.phoneAuth(
      {required String phoneNumber,
      required BuildContext context}) = _PhoneAuth;
  const factory AuthEvent.phoneChanged(String phone) = _PhoneChanged;

  const factory AuthEvent.resentCode(String phone) = _ResentCode;
}
