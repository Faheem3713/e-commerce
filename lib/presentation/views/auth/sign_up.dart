import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/auth/otp_verification.dart';
import 'package:ecommerce/presentation/views/auth/sign_in.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';
import '../widgets/textfield.dart';
import 'widgets/buttons.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.padding14,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppConstants.height50,
            Image.asset("assets/images/ezgif 2.png"),
            const Spacer(),
            Column(
              children: [
                CustomTextField(
                    controller: _nameController,
                    placeholderText: 'E-mail or phone number',
                    prefixIcon: Icons.person),
                AppConstants.height20,
                CustomTextField(
                    controller: _passwordController,
                    placeholderText: 'Password',
                    prefixIcon: Icons.lock),
                AppConstants.height20,
                CustomTextField(
                    controller: _confirmController,
                    placeholderText: 'Confirm password',
                    prefixIcon: Icons.lock)
              ],
            ),
            AppConstants.height10,
            ButtonWidget(
              width: 140,
              text: 'SIGN UP',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => OtpVerification()));
              },
            ),
            AppConstants.height10,
            const AuthTextButton(
              text: "Already have an account.?",
              buttonText: 'SIGN IN',
            ),
            const Text(
              'Sign using your email address or social media below',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaButton(icon: Icons.facebook, onPress: () {}),
                SocialMediaButton(icon: Icons.facebook, onPress: () {}),
                SocialMediaButton(icon: Icons.facebook, onPress: () {}),
                SocialMediaButton(icon: Icons.facebook, onPress: () {}),
              ],
            ),
            AppConstants.height20,
          ],
        ),
      ),
    );
  }
}
