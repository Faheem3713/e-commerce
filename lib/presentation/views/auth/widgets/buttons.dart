import 'package:flutter/material.dart';

import '../sign_up.dart';

class AuthTextButton extends StatelessWidget {
  const AuthTextButton({
    super.key,
    required this.text,
    required this.buttonText,
  });
  final String text;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => SignUpPage()));
          },
          child: Text(buttonText),
        ),
      ],
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key, required this.icon, required this.onPress});
  final IconData icon;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: Icon(icon),
    );
  }
}
