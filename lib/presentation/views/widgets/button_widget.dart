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
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, 46),
        shape: const RoundedRectangleBorder(),
        backgroundColor: AppColor.primaryColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 15, color: AppColor.white, fontWeight: FontWeight.w300),
      ),
    );
  }
}
