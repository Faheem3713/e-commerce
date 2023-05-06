import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'presentation/views/auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            labelLarge:
                TextStyle(fontWeight: FontWeight.normal, color: AppColor.black),
            titleMedium: TextStyle(fontWeight: FontWeight.normal)),
        fontFamily: 'Montserrat',
        useMaterial3: true,
        //  primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}
