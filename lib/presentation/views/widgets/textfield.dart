import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholderText;
  final IconData? prefixIcon;
  final bool enabled;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.placeholderText,
      this.prefixIcon,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
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
