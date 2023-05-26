import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';
import '../../core/theme/text_styles.dart';

class OutlinedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholderText;

  final bool enabled;
  bool obscureText;
  TextInputType keyBoardType;
  void Function(String)? onChanged = (p0) {};
  String? Function(String?)? validator = (p0) => null;
  OutlinedTextField(
      {super.key,
      required this.controller,
      required this.placeholderText,
      this.enabled = true,
      this.onChanged,
      this.validator,
      this.obscureText = false,
      this.keyBoardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: keyBoardType,
        obscureText: obscureText,
        validator: validator,
        onChanged: onChanged,
        enabled: enabled,
        controller: controller,
        decoration: InputDecoration(
            hintStyle: CustomStyles.kSubtitleTextStyle,
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primaryColor)),
            hintText: placeholderText),
      ),
    );
  }
}
