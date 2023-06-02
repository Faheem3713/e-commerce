// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/application/checkData/check_data_cubit.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/text_styles.dart';

class CartCard extends StatelessWidget {
  final Products product;

  final Set<CartItem> orders;
  final int quaitity;
  CartCard({
    Key? key,
    required this.product,
    required this.orders,
    required this.quaitity,
  }) : super(key: key);
  final ValueNotifier<int> _quantityCount = ValueNotifier(1);

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
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.image[0]),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListTile(
              title: Text(product.name),
              subtitle: Text(
                ' ₹${product.price.toString()}',
                style: CustomStyles.ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    if (_quantityCount.value < quaitity) {
                      _quantityCount.value++;
                      totalPrice.value += product.price;
                      findQty(context);
                    }
                    context
                        .read<CheckDataCubit>()
                        .findTotal(product.price, true);
                  },
                  icon: const Icon(Icons.add),
                ),
                ValueListenableBuilder(
                    valueListenable: _quantityCount,
                    builder: (context, count, _) {
                      return Text(count.toString());
                    }),
                IconButton(
                    onPressed: () {
                      if (_quantityCount.value > 0) {
                        _quantityCount.value--;
                        totalPrice.value -= product.price;
                        findQty(context);
                        context
                            .read<CheckDataCubit>()
                            .findTotal(product.price, false);
                      }
                    },
                    icon: const Icon(Icons.remove)),
              ],
            ),
          )
        ],
      ),
    );
  }

  void findQty(BuildContext context) {
    orders.removeWhere((element) => element.product.id == product.id);
    _quantityCount.value > 0
        ? orders.add(CartItem(
            product: product,
            quantity: _quantityCount.value,
            totalQty: product.quantity))
        : context
            .read<CartBloc>()
            .add(CartEvent.removeCart(option: 'cart', id: product.id));
  }
}

ValueNotifier<double> totalPrice = ValueNotifier(0);
