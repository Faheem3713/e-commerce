import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/auth/otp_verification.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';
import '../widgets/textfield.dart';
import 'widgets/buttons.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _pinController = TextEditingController();
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
            AppConstants.height50,
            Column(
              children: [
                CustomTextField(
                    controller: _nameController,
                    placeholderText: 'Name',
                    prefixIcon: Icons.person),
                AppConstants.height20,
                CustomTextField(
                    controller: _addressController,
                    placeholderText: 'Address',
                    prefixIcon: Icons.lock),
                AppConstants.height20,
                CustomTextField(
                    keyBoardType: TextInputType.phone,
                    controller: _pinController,
                    placeholderText: 'Pin Code',
                    prefixIcon: Icons.lock)
              ],
            ),
            AppConstants.height10,
            ButtonWidget(
              width: 140,
              text: 'SIGN UP',
              onPressed: () async {
                final dbref = FirebaseDatabase.instance.ref();
                await dbref.child('Users').push().set({
                  "phoneNo": FirebaseAuth.instance.currentUser!.phoneNumber,
                  'address': _addressController.text,
                  'PinCode': _pinController.text
                }).then((value) => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (ctx) => MainScreen()),
                    (route) => false));
              },
            ),
          ],
        ),
      ),
    );
  }
}
