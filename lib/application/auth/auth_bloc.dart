import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/auth/email_address.dart';
import 'package:ecommerce/domain/auth/i_auth_facade.dart';
import 'package:ecommerce/domain/auth/password.dart';
import 'package:ecommerce/domain/repository/phone_auth_facade.dart';
import 'package:ecommerce/presentation/views/auth/phone/phone_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/phone.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IPhoneAuthFacade _phoneAuthFacade;
  AuthBloc(this._authFacade, this._phoneAuthFacade)
      : super(AuthState.initial()) {
    on<_PhoneChanged>((event, emit) => emit(state.copyWith(
        isLoading: false,
        phone: PhoneNumber(event.phone),
        authFailureOrSuccess: none(),
        autoValidate: AutovalidateMode.always)));

    on<_PhoneAuth>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, autoValidate: AutovalidateMode.always));
      final result = await _phoneAuthFacade.checkPhoneValidation(
          phoneNumber: event.phoneNumber, context: event.context);
      emit(result.fold(
          (l) => state.copyWith(authFailureOrSuccess: some(left(l))),
          (r) => state.copyWith(authFailureOrSuccess: none())));
    });

    on<_ResentCode>((event, emit) {
      _phoneAuthFacade.sendOTP(phone: event.phone);
    });

    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(
          email: EmailAddress(event.emailStr), authFailureOrSuccess: none()));
    });

    on<_PassWordChanged>((event, emit) {
      emit(state.copyWith(
          password: Password(event.passwordStr), authFailureOrSuccess: none()));
    });

    on<_SignInWithGoogle>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, authFailureOrSuccess: none()));

      final failureOrSuccess = await _authFacade.signInWithGoogle();

      emit(state.copyWith(authFailureOrSuccess: some(failureOrSuccess)));
      emit(
          state.copyWith(showErrorMessage: true, authFailureOrSuccess: none()));
    });

    on<_SignIn>((event, emit) async {
      emit(state.copyWith(isLoading: true, authFailureOrSuccess: none()));
      final signInData = await _authFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(event.email),
          password: Password(event.password));

      emit(signInData.fold(
          (l) => state.copyWith(
              isLoading: false, authFailureOrSuccess: some(left(l))),
          (r) => state.copyWith(
              isLoading: false, authFailureOrSuccess: some(right(r)))));
    });

    on<_Register>((event, emit) async {
      emit(state.copyWith(isLoading: true, showErrorMessage: false));
      if (state.email.isValid() && state.password.isValid()) {
        final registerData = await _authFacade.registerWithEmailAndPassword(
            emailAddress: EmailAddress(event.email),
            password: Password(event.password));
        emit(registerData.fold(
            (l) => state.copyWith(isLoading: false, showErrorMessage: true),
            (r) => state.copyWith(
                isLoading: false,
                showErrorMessage: false,
                authFailureOrSuccess: some(right(r)))));
      }
    });
  }
  _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        autoValidate: AutovalidateMode.always,
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.email,
        password: state.password,
      );
    }

    yield state.copyWith(
      autoValidate: AutovalidateMode.always,
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
