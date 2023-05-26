part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String passwordStr) =
      _PassWordChanged;
  const factory AuthEvent.signIn() = _SignIn;
  const factory AuthEvent.register() = _Register;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory AuthEvent.toggleAutovalidate({required bool isValidate}) =
      _ToggleAutovalidate;
  const factory AuthEvent.phoneAuth(
      {required String phoneNumber,
      required BuildContext context}) = _PhoneAuth;
  const factory AuthEvent.phoneChanged(String phone) = _PhoneChanged;

  const factory AuthEvent.resentCode(String phone) = _ResentCode;
}
