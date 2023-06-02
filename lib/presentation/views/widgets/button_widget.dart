import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
  });
  final String text;
  final void Function()? onPressed;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          backgroundColor: AppColor.primaryColor,
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              color: AppColor.white,
              fontWeight: FontWeight.w500,
              letterSpacing: -1),
        ),
      ),
    );
  }
}
