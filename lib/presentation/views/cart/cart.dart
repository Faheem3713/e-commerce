import 'dart:developer';

import 'package:ecommerce/application/checkData/check_data_cubit.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/cart/cart_bloc.dart';
import '../../core/theme/text_styles.dart';
import '../widgets/appbarwidget.dart';
import '../widgets/button_widget.dart';
import '../widgets/outlined_button.dart';
import '../widgets/textfield.dart';
import 'widgets/cartcard.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final _couponController = TextEditingController();
  Set<CartItem> orders = {};
  double discountPrice = 0;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CheckDataCubit>().clearTotal();
      context.read<CartBloc>().add(const CartEvent.getCart(option: 'cart'));
    });

    return Scaffold(
      appBar: const AppBarWidget(isIcon: false),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          print(state.data.length);
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    value: null,
                  ),
                )
              : state.data.isNotEmpty
                  ? ListView(
                      padding: AppConstants.padding5,
                      children: [
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final data = state.data[index];

                              orders.removeWhere(
                                  (element) => element.product.id == data.id);
                              orders.add(CartItem(product: data, quantity: 1));
                              orders.toSet().toList();
                              context
                                  .read<CheckDataCubit>()
                                  .findTotal(data.price, true);

                              return CartCard(
                                orders: orders,
                                product: data,
                                quaitity: 6,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                AppConstants.height10,
                            itemCount: state.data.length),
                        AppConstants.height20,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _key,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: BlocBuilder<CheckDataCubit,
                                      CheckDataState>(
                                    builder: (context, state) {
                                      return CustomTextField(
                                          validator: (val) {
                                            if (context
                                                    .read<CheckDataCubit>()
                                                    .state
                                                    .offer ==
                                                0) {
                                              return 'invalid coupon';
                                            } else if (context
                                                    .read<CheckDataCubit>()
                                                    .state
                                                    .offer ==
                                                -1) {
                                              log(context
                                                  .read<CheckDataCubit>()
                                                  .state
                                                  .offer
                                                  .toString());
                                              return 'Coupon already used';
                                            } else {
                                              return null;
                                            }
                                          },
                                          controller: _couponController,
                                          placeholderText: 'Enter coupon code',
                                          prefixIcon: Icons.local_offer);
                                    },
                                  ),
                                ),
                                AppConstants.width10,
                                Expanded(
                                    flex: 1,
                                    child: CustomOutlinedbutton(
                                      onPressed: () async {
                                        await BlocProvider.of<CheckDataCubit>(
                                                context)
                                            .checkIsValid(
                                                _couponController.text);
                                        _key.currentState!.validate();
                                      },
                                      text: 'Apply',
                                    ))
                              ],
                            ),
                          ),
                        ),
                        AppConstants.height10,
                        ListTile(
                          tileColor: AppColor.grey,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: CustomStyles.ktitleTextStyle
                                    .copyWith(color: AppColor.primaryColor),
                              ),
                              BlocBuilder<CheckDataCubit, CheckDataState>(
                                builder: (context, subtotal) {
                                  return Text(
                                    subtotal.subtotal.toDouble().toString(),
                                    style: CustomStyles.ktitleTextStyle,
                                  );
                                },
                              )
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Discount',
                                style: CustomStyles.ktitleTextStyle
                                    .copyWith(color: AppColor.primaryColor),
                              ),
                              BlocBuilder<CheckDataCubit, CheckDataState>(
                                builder: (context, discount) {
                                  discountPrice = discount.offer != -1
                                      ? (state.subTotal * discount.offer) / 100
                                      : 0;
                                  return Text(
                                    discountPrice.toString(),
                                    style: CustomStyles.ktitleTextStyle,
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'Total',
                          ),
                          trailing: BlocBuilder<CheckDataCubit, CheckDataState>(
                            builder: (context, discount) {
                              return Text(
                                discount.offer != -1
                                    ? (discount.subtotal -
                                            ((state.subTotal * discount.offer) /
                                                100))
                                        .toString()
                                    : discount.subtotal.toString(),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          child: ButtonWidget(
                              onPressed: () {
                                if (orders.isNotEmpty) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) => CheckoutPage(
                                              couponCode:
                                                  _couponController.text,
                                              cart: Cart(
                                                  items: orders.toList(),
                                                  discount: discountPrice))));
                                }
                              },
                              text: 'PROCEED',
                              width: double.infinity),
                        )
                      ],
                    )
                  : const Center(child: Text('Empty'));
        },
      ),
    );
  }
}
