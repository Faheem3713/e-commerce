import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/auth/sign_in.dart';
import 'package:flutter/material.dart';

import '../widgets/textfield.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/wp4527729.jpg'),
          ),
          AppConstants.height20,
          const Text(
            'Cristiano Ronaldo',
            style: CustomStyles.ktitleTextStyle,
          ),
          const Divider(
            height: 50,
            thickness: .3,
          ),
          CustomTextField(
              enabled: false,
              controller: _nameController,
              placeholderText: "Name",
              prefixIcon: Icons.person),
          AppConstants.height20,
          CustomTextField(
              enabled: false,
              controller: _emailController,
              placeholderText: 'Email',
              prefixIcon: Icons.email),
          AppConstants.height20,
          CustomTextField(
              enabled: false,
              controller: _phoneController,
              placeholderText: 'Phone',
              prefixIcon: Icons.phone)
        ]),
      ),
    );
  }
}
