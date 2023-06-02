import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/widgets/appbarwidget.dart';
import 'package:flutter/material.dart';

class ShowMessagePage extends StatelessWidget {
  const ShowMessagePage({super.key, required this.message, required this.icon});
  final String message;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColor.unselectedColor,
            size: 110,
          ),
          Text(
            message,
            style: CustomStyles.kHeaderText,
          )
        ],
      ),
    );
  }
}
