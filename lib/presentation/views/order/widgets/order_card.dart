import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:ecommerce/presentation/views/order/order_details.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/text_styles.dart';

class OrderCard extends StatelessWidget {
  final CartItem cartItem;
  final void Function()? onPressed;
  const OrderCard({super.key, this.onPressed, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => OrderDetailsPage(
                        orderNumber: cartItem.orderId!,
                        orderDate: cartItem.date!,
                        orderStatus: 'Shipping',
                        shippingName: cartItem.name!,
                        shippingAddress: cartItem.address!,
                        shippingState: cartItem.state!,
                        shippingZipCode: cartItem.zipCode!,
                        paymentMethod: 'COD',
                        totalAmount: cartItem.totalPrice,
                        items: [
                          OrderItem(
                              name: cartItem.product.name,
                              price: cartItem.product.price.toDouble(),
                              quantity: cartItem.quantity)
                        ]))));
      },
      child: Container(
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
                    image: NetworkImage(cartItem.product.image[0]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListTile(
                title: Text(cartItem.product.name),
                subtitle: Text(
                  '\$${cartItem.product.price.toString()}',
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
                      '${cartItem.quantity}',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
