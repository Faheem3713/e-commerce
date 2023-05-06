import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/widgets/appbarwidget.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:ecommerce/presentation/views/widgets/selection_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isIcon: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/aauwen-r_grey_16_1_4 2.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const Text(
              '. . . . .',
              style: TextStyle(
                  color: AppColor.unselectedColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Almond Toe'),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$35.66'),
                  Text(
                    '\$35.66',
                    style: CustomStyles.ktitleTextStyle
                        .copyWith(color: AppColor.red),
                  ),
                  AppConstants.height10,
                ],
              ),
            ),
            AppConstants.kdivider,
            Row(
              children: [
                const Text('Size '),
                SelectionChip(
                  chips: const ['30', '31', '32', '34'],
                  onSizeSelected: (p0) {},
                ),
              ],
            ),
            const Spacer(),
            Container(
              color: AppColor.unselectedColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Center(
                          child: Text(
                    "1",
                    style: CustomStyles.titleLarge,
                  ))),
                  ButtonWidget(
                      text: 'ADD TO CART',
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width * .7),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
