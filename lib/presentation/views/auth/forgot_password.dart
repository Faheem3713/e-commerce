import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/auth/phone/otp_verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import '../widgets/textfield.dart';
import 'widgets/buttons.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              'Reset Password',
              style: TextStyle(fontWeight: FontWeight.w900, height: 3),
            ),
            CustomTextField(
              controller: _nameController,
              placeholderText: 'Enter your email',
              prefixIcon: Icons.person,
            ),
            AppConstants.height10,
            AppConstants.height10,
            Center(
              child: ButtonWidget(
                width: 140,
                onPressed: () {
                  if (_nameController.text.isNotEmpty) {
                    FirebaseAuth.instance
                        .sendPasswordResetEmail(email: _nameController.text);
                  }
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => OtpVerification()));
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
