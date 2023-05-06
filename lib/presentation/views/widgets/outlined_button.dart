import 'package:flutter/material.dart';

class CustomOutlinedbutton extends StatelessWidget {
  const CustomOutlinedbutton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(shape: const RoundedRectangleBorder()),
        onPressed: onPressed,
        child: Text(text));
  }
}
