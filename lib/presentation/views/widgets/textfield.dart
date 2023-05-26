import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholderText;
  final IconData? prefixIcon;
  final bool enabled;
  bool obscureText;
  TextInputType keyBoardType;
  void Function(String)? onChanged = (p0) {};
  String? Function(String?)? validator = (p0) => null;
  CustomTextField(
      {super.key,
      required this.controller,
      required this.placeholderText,
      this.prefixIcon,
      this.enabled = true,
      this.onChanged,
      this.validator,
      this.obscureText = false,
      this.keyBoardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  height: 50,
      child: TextFormField(
        keyboardType: keyBoardType,
        obscureText: obscureText,
        validator: validator,
        onChanged: onChanged,
        enabled: enabled,
        controller: controller,
        decoration: InputDecoration(
            fillColor: const Color(0xffF5F5F5),
            filled: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: Icon(
              prefixIcon,
              color: AppColor.primaryColor,
            ),
            hintText: placeholderText),
      ),
    );
  }
}
