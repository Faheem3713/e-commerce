import 'package:ecommerce/application/payment/payment_cubit.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:ecommerce/presentation/views/order/order_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/text_styles.dart';
import '../../widgets/outlined_button.dart';

class OrderCard extends StatelessWidget {
  final CartItem cartItem;
  final void Function()? onPressed;
  const OrderCard({super.key, this.onPressed, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cartItem.isCancel ?? false
          ? null
          : () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => OrderDetailsPage(
                            items: cartItem,
                          ))));
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
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${cartItem.product.price.toString()}',
                      style: CustomStyles.ktitleTextStyle,
                    ),
                    cartItem.isCancel ?? false
                        ? _cancelledOrder()
                        : PopupMenuButton(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: const Text('Cancel order'),
                                onTap: () {
                                  context
                                      .read<PaymentCubit>()
                                      .cancelOrder(cartItem);
                                },
                              )
                            ],
                          )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cancelledOrder() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(color: Colors.red[100]),
      child: const Text(
        'Cancelled',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
