import 'package:ecommerce/presentation/views/auth/google/ventor_registration.dart';
import 'package:ecommerce/presentation/views/auth/phone/user_registration.dart';
import 'package:flutter/material.dart';

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
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => VentorRegistration()));
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
