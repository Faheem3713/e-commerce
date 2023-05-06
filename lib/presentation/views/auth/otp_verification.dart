import 'dart:async';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';
import '../widgets/textfield.dart';

class OtpVerification extends StatelessWidget {
  OtpVerification({Key? key}) : super(key: key);

  final _otpController = TextEditingController();
  final ValueNotifier<int> resetOtpCountdown = ValueNotifier(5);

  void _startTimer() {
    resetOtpCountdown.value = 5;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      resetOtpCountdown.value == 0 ? timer.cancel() : resetOtpCountdown.value--;
    });
  }

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
                            onTap: _startTimer,
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => OtpVerification()));
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
}
