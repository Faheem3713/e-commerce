import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/ventor/home.dart';
import 'package:ecommerce/presentation/views/auth/phone/phone_auth.dart';
import 'package:ecommerce/presentation/views/auth/google/sign_in.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SelectingOptionPage extends StatelessWidget {
  SelectingOptionPage({super.key});
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _entryChoiceButtton(
                text: 'User',
                context: context,
                onPressed: () {
                  if (_auth.currentUser?.phoneNumber == null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhoneAuth(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ));
                  }
                },
              ),
              AppConstants.height10,
              _entryChoiceButtton(
                text: 'Ventor',
                context: context,
                onPressed: () {
                  if (_auth.currentUser?.email == null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VentorHome(),
                        ));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Expanded _entryChoiceButtton(
      {required BuildContext context,
      required void Function() onPressed,
      required String text}) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                foregroundColor: AppColor.white,
                shape: const RoundedRectangleBorder(),
                backgroundColor: AppColor.secondaryColor),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(color: AppColor.white, fontSize: 25),
            )),
      ),
    );
  }
}
