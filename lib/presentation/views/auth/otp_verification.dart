import 'dart:async';
import 'dart:developer';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/auth/sign_up.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/auth/auth_bloc.dart';
import '../widgets/button_widget.dart';
import '../widgets/textfield.dart';

class OtpVerification extends StatelessWidget {
  OtpVerification({
    Key? key,
    required this.verificationId,
    required this.phoneNumber,
  }) : super(key: key);
  final String verificationId;
  final String phoneNumber;

  final _otpController = TextEditingController();
  final ValueNotifier<int> resetOtpCountdown = ValueNotifier(5);
  @override
  Widget build(BuildContext context) {
    _startTimer();

    return Scaffold(
      body: Padding(
        padding: AppConstants.padding14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppConstants.height50,
            Center(child: Image.asset("assets/images/ezgif 2.png")),
            const Spacer(),
            const Text(
              'OTP',
              style: TextStyle(fontWeight: FontWeight.w900, height: 3),
            ),
            CustomTextField(
              keyBoardType: TextInputType.phone,
              controller: _otpController,
              placeholderText: 'Enter your OTP',
              prefixIcon: Icons.person,
            ),
            AppConstants.height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder<int>(
                  valueListenable: resetOtpCountdown,
                  builder: (context, remainingSeconds, _) {
                    return remainingSeconds == 0
                        ? InkWell(
                            onTap: () {
                              _startTimer();
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.resentCode(phoneNumber));
                            },
                            child: const Text('Resend'),
                          )
                        : RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                color: AppColor.black,
                                fontFamily: 'Montserrat',
                              ),
                              children: [
                                const TextSpan(
                                  text: 'OTP expire in ',
                                ),
                                TextSpan(
                                  text: '00:$remainingSeconds',
                                  style: const TextStyle(
                                    color: AppColor.red,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                ),
              ],
            ),
            AppConstants.height10,
            Center(
              child: ButtonWidget(
                width: 140,
                onPressed: () async {
                  final auth = FirebaseAuth.instance;
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: verificationId,
                      smsCode: _otpController.text);
                  try {
                    await auth.signInWithCredential(credential);
                    checkNumberIsRegistered(
                        number: phoneNumber, context: context);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid OTP')));
                  }
                },
                text: 'CONTINUE',
              ),
            ),
            AppConstants.height50
          ],
        ),
      ),
    );
  }

  void _startTimer() {
    resetOtpCountdown.value = 40;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      resetOtpCountdown.value == 0 ? timer.cancel() : resetOtpCountdown.value--;
    });
  }

  checkNumberIsRegistered(
      {required String number, required BuildContext context}) async {
    try {
      final dbref = FirebaseDatabase.instance.ref();
      await dbref.child("Users").once().then((data) {
        for (var i in data.snapshot.children) {
          String data = i.child("phoneNo").value.toString();

          if ('+91$number' == data) {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => MainScreen()));
            return;
          }
        }
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => SignUpPage()));
      });
    } catch (e) {
      return false;
    }
  }
}
