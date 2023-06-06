import 'package:ecommerce/application/checkData/check_data_cubit.dart';
import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:ecommerce/presentation/views/cart/invoice_page.dart';
import 'package:ecommerce/presentation/views/widgets/show_messsage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/appbarwidget.dart';
import '../widgets/button_widget.dart';
import '../widgets/outlined_button.dart';
import '../widgets/textfield.dart';
import 'widgets/cartcard.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _couponController = TextEditingController();
    final Set<CartItem> orders = {};
    double discountPrice = 0;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<CheckDataCubit>().clearTotal();
      context.read<CartBloc>().add(const CartEvent.getCart(option: 'cart'));
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarWidget(isIcon: false),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.data.isEmpty) {
            return const ShowMessagePage(
              message: 'No products in cart',
              icon: Icons.shopping_cart_checkout_rounded,
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        final product = state.data[index];
                        orders.removeWhere(
                            (element) => element.product.id == product.id);
                        orders.add(CartItem(
                          product: product,
                          quantity: 1,
                          totalQty: product.quantity,
                        ));
                        context
                            .read<CheckDataCubit>()
                            .findTotal(product.price, true);

                        return CartCard(
                          product: product,
                          orders: orders,
                          quantity: product.quantity,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Form(
                    key: _formKey,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: BlocBuilder<CheckDataCubit, CheckDataState>(
                            builder: (context, state) {
                              return CustomTextField(
                                controller: _couponController,
                                placeholderText: 'Enter coupon code',
                                prefixIcon: Icons.local_offer,
                                validator: (value) {
                                  if (context
                                          .read<CheckDataCubit>()
                                          .state
                                          .offer ==
                                      0) {
                                    return 'Invalid coupon';
                                  } else if (context
                                          .read<CheckDataCubit>()
                                          .state
                                          .offer ==
                                      -1) {
                                    return 'Coupon already used';
                                  } else {
                                    return null;
                                  }
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            child: CustomOutlinedbutton(
                              onPressed: () async {
                                await BlocProvider.of<CheckDataCubit>(context)
                                    .checkIsValid(
                                  _couponController.text,
                                );
                                if (_formKey.currentState!.validate()) {
                                  // Apply coupon logic
                                }
                              },
                              text: 'Apply',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                          builder: (context, state) {
                            return Text(
                              state.subtotal.toDouble().toString(),
                              style: CustomStyles.ktitleTextStyle,
                            );
                          },
                        ),
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
                          builder: (context, state) {
                            discountPrice = state.offer != -1
                                ? (state.subtotal * state.offer) / 100
                                : 0;
                            return Text(
                              discountPrice.toString(),
                              style: CustomStyles.ktitleTextStyle,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text('Total'),
                    trailing: BlocBuilder<CheckDataCubit, CheckDataState>(
                      builder: (context, state) {
                        final total = state.offer != -1
                            ? state.subtotal -
                                (state.subtotal * state.offer) / 100
                            : state.subtotal;
                        return Text(total.toString());
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
                                couponCode: _couponController.text,
                                cart: Cart(
                                  items: orders.toList(),
                                  discount: discountPrice,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      text: 'PROCEED',
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
