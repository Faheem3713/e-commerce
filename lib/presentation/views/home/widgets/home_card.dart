import 'package:flutter/material.dart';

import '../../../../application/product/product_bloc.dart';
import '../../../core/theme/app_color.dart';
import '../../product/product.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.image, required this.event});
  final String image;
  final ProductEvent event;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => ProductPage(
                      showAppbar: true,
                      event: event,
                    )));
      },
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.black),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
