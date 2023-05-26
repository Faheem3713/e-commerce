import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';

import '../auth/auth_failure.dart';

abstract class IPhoneAuthFacade {
  Future<Either<AuthFailure, Unit>> checkPhoneValidation(
      {required String phoneNumber, required BuildContext context});
  Future<bool> sendOTP({required String phone});
}
