import 'dart:developer';
import 'package:ecommerce/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/presentation/views/auth/otp_verification.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/phone_auth_facade.dart';

@LazySingleton(as: IPhoneAuthFacade)
class PhoneAuthRepository implements IPhoneAuthFacade {
  final FirebaseAuth _firebaseAuth;
  int? _resendingToken;
  String _verificationId = '';

  PhoneAuthRepository(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> checkPhoneValidation({
    required String phoneNumber,
    required BuildContext context,
  }) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: '+91$phoneNumber',
        verificationCompleted: (phoneAuthCredential) async {
          await _firebaseAuth.signInWithCredential(phoneAuthCredential).then(
                (value) => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => MainScreen()),
                ),
              );
        },
        verificationFailed: (error) {
          if (error.code == 'invalid-phone-number') {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Invalid phone number')),
            );
          }
        },
        codeSent: (verificationId, forceResendingToken) async {
          _resendingToken = forceResendingToken;
          _verificationId = verificationId;
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => OtpVerification(
                phoneNumber: phoneNumber,
                verificationId: verificationId,
              ),
            ),
          );
        },
        timeout: const Duration(seconds: 30),
        codeAutoRetrievalTimeout: (verificationId) {},
      );
      return right(unit);
    } catch (e) {
      log(e.toString());
      return left(const AuthFailure.invalidPhoneNumber());
    }
  }

  @override
  Future<bool> sendOTP({required String phone}) async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91$phone',
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          _resendingToken = resendToken;
        },
        timeout: const Duration(seconds: 25),
        forceResendingToken: _resendingToken,
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = _verificationId;
        },
      );
      debugPrint("_verificationId: $_verificationId");
    } catch (e) {
      log(e.toString());
    }
    return true;
  }
}
