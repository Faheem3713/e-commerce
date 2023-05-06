import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/auth/otp_verification.dart';
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
              placeholderText: 'Enter phone number',
              prefixIcon: Icons.person,
            ),
            AppConstants.height10,
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
            const AuthTextButton(
                text: "Already have an account", buttonText: 'Sign In'),
            AppConstants.height50
          ],
        ),
      ),
    );
  }
}
