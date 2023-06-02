import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomStyles {
  static const ktitleTextStyle =
      TextStyle(fontSize: 13, color: AppColor.black, fontFamily: 'Montserrat');
  static const titleLarge = TextStyle(
    fontSize: 16,
    color: AppColor.black,
  );
  static const kSubtitleTextStyle = TextStyle(
      fontSize: 13, color: AppColor.unselectedColor, fontFamily: 'Montserrat');
  static const kHeaderText = TextStyle(
    letterSpacing: -1,
    fontSize: 20,
    color: Color.fromARGB(255, 151, 150, 150),
    fontFamily: 'Montserrat',
  );
}
