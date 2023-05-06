import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/auth/forgot_password.dart';
import 'package:ecommerce/presentation/views/home/home_page.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/textfield.dart';
import 'sign_up.dart';
import 'widgets/buttons.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final _nameController = TextEditingController();
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
                    controller: _nameController,
                    placeholderText: 'Password',
                    prefixIcon: Icons.lock),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ForgotPassword()));
                    },
                    child: const Text('Forgot Password.?')),
              ],
            ),
            AppConstants.height10,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MainScreen()));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(140, 46),
                shape: const RoundedRectangleBorder(),
                backgroundColor: AppColor.primaryColor,
              ),
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            AppConstants.height10,
            const AuthTextButton(
              text: "Don't have an account.?",
              buttonText: 'SIGN UP',
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
            AppConstants.height50,
          ],
        ),
      ),
    );
  }
}
