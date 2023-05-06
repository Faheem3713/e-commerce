import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
  MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => OrderCard(
                orderDate: 'khk',
                itemName: 'itemName',
                itemImage: 'assets/images/aauwen-r_grey_16_1_4 2.png',
                itemPrice: 199,
                itemQuantity: 2),
            separatorBuilder: (context, index) => AppConstants.height10,
            itemCount: 6)
      ],
    ));
  }
}

class OrderCard extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final double itemPrice;
  final int itemQuantity;
  final String orderDate;

  OrderCard(
      {required this.itemName,
      required this.itemImage,
      required this.itemPrice,
      required this.itemQuantity,
      required this.orderDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey,
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(itemImage),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListTile(
              title: Text(itemName),
              subtitle: Text(
                '\$${itemPrice.toString()}',
                style: CustomStyles.ktitleTextStyle,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Qty:',
                    style: CustomStyles.kSubtitleTextStyle,
                  ),
                  Text(
                    '$itemQuantity',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
