import 'package:ecommerce/application/payment/payment_cubit.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/textfield.dart';

class UserRegistration extends StatelessWidget {
  UserRegistration({super.key});
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _pinController = TextEditingController();
  final _emailController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Padding(
          padding: AppConstants.padding14,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppConstants.height50,
                Image.asset("assets/images/ezgif 2.png"),
                AppConstants.height50,
                Column(
                  children: [
                    CustomTextField(
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Field cannot be empty';
                          }
                          return null;
                        },
                        controller: _nameController,
                        placeholderText: 'Name',
                        prefixIcon: Icons.person),
                    AppConstants.height20,
                    CustomTextField(
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Field cannot be empty';
                          }
                          return null;
                        },
                        controller: _addressController,
                        placeholderText: 'Address',
                        prefixIcon: Icons.lock),
                    AppConstants.height20,
                    CustomTextField(
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Field cannot be empty';
                          }
                          return null;
                        },
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
                    if (_key.currentState!.validate()) {
                      final dbref = FirebaseDatabase.instance.ref();
                      final key = dbref.child('Users').push();
                      await key
                          .set({
                            'id': key.key,
                            'name': _nameController.text,
                            "phoneNo":
                                FirebaseAuth.instance.currentUser!.phoneNumber,
                            'address': _addressController.text,
                            'PinCode': _pinController.text,
                            'wallet': 0,
                            'email': _emailController.text
                          })
                          .then((value) => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (ctx) => MainScreen()),
                              (route) => false))
                          .then((value) =>
                              context.read<PaymentCubit>().getProfiele());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
