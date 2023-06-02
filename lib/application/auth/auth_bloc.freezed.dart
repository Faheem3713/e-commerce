// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PassWordChangedCopyWith<$Res> {
  factory _$$_PassWordChangedCopyWith(
          _$_PassWordChanged value, $Res Function(_$_PassWordChanged) then) =
      __$$_PassWordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PassWordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PassWordChanged>
    implements _$$_PassWordChangedCopyWith<$Res> {
  __$$_PassWordChangedCopyWithImpl(
      _$_PassWordChanged _value, $Res Function(_$_PassWordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_PassWordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PassWordChanged implements _PassWordChanged {
  const _$_PassWordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassWordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassWordChangedCopyWith<_$_PassWordChanged> get copyWith =>
      __$$_PassWordChangedCopyWithImpl<_$_PassWordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PassWordChanged implements AuthEvent {
  const factory _PassWordChanged(final String passwordStr) = _$_PassWordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_PassWordChangedCopyWith<_$_PassWordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      __$$_SignInCopyWithImpl<_$_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn(
      {required final String email,
      required final String password}) = _$_SignIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Register(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return register(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return register?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String email,
      required final String password}) = _$_Register;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithGoogle>
    implements _$$_SignInWithGoogleCopyWith<$Res> {
  __$$_SignInWithGoogleCopyWithImpl(
      _$_SignInWithGoogle _value, $Res Function(_$_SignInWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements AuthEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
abstract class _$$_PhoneAuthCopyWith<$Res> {
  factory _$$_PhoneAuthCopyWith(
          _$_PhoneAuth value, $Res Function(_$_PhoneAuth) then) =
      __$$_PhoneAuthCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, BuildContext context});
}

/// @nodoc
class __$$_PhoneAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PhoneAuth>
    implements _$$_PhoneAuthCopyWith<$Res> {
  __$$_PhoneAuthCopyWithImpl(
      _$_PhoneAuth _value, $Res Function(_$_PhoneAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? context = null,
  }) {
    return _then(_$_PhoneAuth(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_PhoneAuth implements _PhoneAuth {
  const _$_PhoneAuth({required this.phoneNumber, required this.context});

  @override
  final String phoneNumber;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.phoneAuth(phoneNumber: $phoneNumber, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneAuth &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneAuthCopyWith<_$_PhoneAuth> get copyWith =>
      __$$_PhoneAuthCopyWithImpl<_$_PhoneAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return phoneAuth(phoneNumber, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return phoneAuth?.call(phoneNumber, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (phoneAuth != null) {
      return phoneAuth(phoneNumber, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return phoneAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return phoneAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (phoneAuth != null) {
      return phoneAuth(this);
    }
    return orElse();
  }
}

abstract class _PhoneAuth implements AuthEvent {
  const factory _PhoneAuth(
      {required final String phoneNumber,
      required final BuildContext context}) = _$_PhoneAuth;

  String get phoneNumber;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_PhoneAuthCopyWith<_$_PhoneAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneChangedCopyWith<$Res> {
  factory _$$_PhoneChangedCopyWith(
          _$_PhoneChanged value, $Res Function(_$_PhoneChanged) then) =
      __$$_PhoneChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_PhoneChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PhoneChanged>
    implements _$$_PhoneChangedCopyWith<$Res> {
  __$$_PhoneChangedCopyWithImpl(
      _$_PhoneChanged _value, $Res Function(_$_PhoneChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_PhoneChanged(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneChanged &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      __$$_PhoneChangedCopyWithImpl<_$_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements AuthEvent {
  const factory _PhoneChanged(final String phone) = _$_PhoneChanged;

  String get phone;
  @JsonKey(ignore: true)
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResentCodeCopyWith<$Res> {
  factory _$$_ResentCodeCopyWith(
          _$_ResentCode value, $Res Function(_$_ResentCode) then) =
      __$$_ResentCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_ResentCodeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResentCode>
    implements _$$_ResentCodeCopyWith<$Res> {
  __$$_ResentCodeCopyWithImpl(
      _$_ResentCode _value, $Res Function(_$_ResentCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_ResentCode(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResentCode implements _ResentCode {
  const _$_ResentCode(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.resentCode(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResentCode &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResentCodeCopyWith<_$_ResentCode> get copyWith =>
      __$$_ResentCodeCopyWithImpl<_$_ResentCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) register,
    required TResult Function() signInWithGoogle,
    required TResult Function(String phoneNumber, BuildContext context)
        phoneAuth,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String phone) resentCode,
  }) {
    return resentCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? register,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String phone)? resentCode,
  }) {
    return resentCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? register,
    TResult Function()? signInWithGoogle,
    TResult Function(String phoneNumber, BuildContext context)? phoneAuth,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String phone)? resentCode,
    required TResult orElse(),
  }) {
    if (resentCode != null) {
      return resentCode(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PassWordChanged value) passwordChanged,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Register value) register,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_PhoneAuth value) phoneAuth,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_ResentCode value) resentCode,
  }) {
    return resentCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PassWordChanged value)? passwordChanged,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Register value)? register,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_PhoneAuth value)? phoneAuth,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_ResentCode value)? resentCode,
  }) {
    return resentCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PassWordChanged value)? passwordChanged,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Register value)? register,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_PhoneAuth value)? phoneAuth,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_ResentCode value)? resentCode,
    required TResult orElse(),
  }) {
    if (resentCode != null) {
      return resentCode(this);
    }
    return orElse();
  }
}

abstract class _ResentCode implements AuthEvent {
  const factory _ResentCode(final String phone) = _$_ResentCode;

  String get phone;
  @JsonKey(ignore: true)
  _$$_ResentCodeCopyWith<_$_ResentCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  EmailAddress get email => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AutovalidateMode get autoValidate => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  PhoneNumber get phone => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {EmailAddress email,
      bool isLoading,
      AutovalidateMode autoValidate,
      Password password,
      PhoneNumber phone,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isLoading = null,
    Object? autoValidate = null,
    Object? password = null,
    Object? phone = null,
    Object? showErrorMessage = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      autoValidate: null == autoValidate
          ? _value.autoValidate
          : autoValidate // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      bool isLoading,
      AutovalidateMode autoValidate,
      Password password,
      PhoneNumber phone,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isLoading = null,
    Object? autoValidate = null,
    Object? password = null,
    Object? phone = null,
    Object? showErrorMessage = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccess = null,
  }) {
    return _then(_$_AuthState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      autoValidate: null == autoValidate
          ? _value.autoValidate
          : autoValidate // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.email,
      required this.isLoading,
      required this.autoValidate,
      required this.password,
      required this.phone,
      required this.showErrorMessage,
      required this.isSubmitting,
      required this.authFailureOrSuccess});

  @override
  final EmailAddress email;
  @override
  final bool isLoading;
  @override
  final AutovalidateMode autoValidate;
  @override
  final Password password;
  @override
  final PhoneNumber phone;
  @override
  final bool showErrorMessage;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'AuthState(email: $email, isLoading: $isLoading, autoValidate: $autoValidate, password: $password, phone: $phone, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.autoValidate, autoValidate) ||
                other.autoValidate == autoValidate) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isLoading, autoValidate,
      password, phone, showErrorMessage, isSubmitting, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final EmailAddress email,
      required final bool isLoading,
      required final AutovalidateMode autoValidate,
      required final Password password,
      required final PhoneNumber phone,
      required final bool showErrorMessage,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccess}) = _$_AuthState;

  @override
  EmailAddress get email;
  @override
  bool get isLoading;
  @override
  AutovalidateMode get autoValidate;
  @override
  Password get password;
  @override
  PhoneNumber get phone;
  @override
  bool get showErrorMessage;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
