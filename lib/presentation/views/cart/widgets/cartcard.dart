import 'package:ecommerce/application/checkData/check_data_cubit.dart';
import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/text_styles.dart';

class CartCard extends StatelessWidget {
  final Products product;
  final Set<CartItem> orders;
  final int quantity;

  CartCard({
    Key? key,
    required this.product,
    required this.orders,
    required this.quantity,
  }) : super(key: key);

  final ValueNotifier<int> _quantityCount = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(product.image[0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: CustomStyles.ktitleTextStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  '₹${product.price.toString()}',
                  style: CustomStyles.titleLarge.copyWith(color: AppColor.red),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _incrementQuantity(context);
                      },
                      icon: const Icon(Icons.add),
                    ),
                    ValueListenableBuilder(
                      valueListenable: _quantityCount,
                      builder: (context, count, _) {
                        return Text(
                          count.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    IconButton(
                      onPressed: () {
                        _decrementQuantity(context);
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              _removeFromCart(context);
            },
            icon: const Icon(Icons.delete),
            color: AppColor.red,
          ),
        ],
      ),
    );
  }

  void _incrementQuantity(BuildContext context) {
    if (_quantityCount.value < quantity) {
      _quantityCount.value++;
      _updateCart(context);
    }
  }

  void _decrementQuantity(BuildContext context) {
    if (_quantityCount.value > 1) {
      _quantityCount.value--;
      _updateCart(context);
    }
  }

  void _updateCart(BuildContext context) {
    final updatedCartItem = CartItem(
      product: product,
      quantity: _quantityCount.value,
      totalQty: product.quantity,
    );

    orders.removeWhere((element) => element.product.id == product.id);
    if (_quantityCount.value > 0) {
      orders.add(updatedCartItem);
    } else {
      context
          .read<CartBloc>()
          .add(CartEvent.removeCart(option: 'cart', id: product.id));
    }
  }

  void _removeFromCart(BuildContext context) {
    context
        .read<CartBloc>()
        .add(CartEvent.removeCart(option: 'cart', id: product.id));
  }
}
