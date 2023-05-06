import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/text_styles.dart';

class CartCard extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final double itemPrice;
  final int itemQuantity;
  final String orderDate;

  CartCard(
      {super.key,
      required this.itemName,
      required this.itemImage,
      required this.itemPrice,
      required this.itemQuantity,
      required this.orderDate});
  final ValueNotifier<int> _count = ValueNotifier(0);
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
            ),
          ),
          Expanded(
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    _count.value++;
                  },
                  icon: const Icon(Icons.add),
                ),
                ValueListenableBuilder(
                    valueListenable: _count,
                    builder: (context, count, _) {
                      return Text(count.toString());
                    }),
                IconButton(
                    onPressed: () {
                      _count.value--;
                    },
                    icon: const Icon(Icons.remove))
              ],
            ),
          )
        ],
      ),
    );
  }
}
