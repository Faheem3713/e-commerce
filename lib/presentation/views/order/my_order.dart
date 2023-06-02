import 'package:ecommerce/application/payment/payment_cubit.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/widgets/show_messsage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/order_card.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<PaymentCubit>().getOrders();
    });
    return Scaffold(body: BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.orders.isEmpty
                ? const Center(
                    child: ShowMessagePage(
                        message: 'No orders placed',
                        icon: Icons.shopping_cart_outlined))
                : state.orders.isNotEmpty
                    ? ListView(
                        children: [
                          ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return OrderCard(
                                  cartItem: state.orders[index],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  AppConstants.height10,
                              itemCount: state.orders.length)
                        ],
                      )
                    : const ShowMessagePage(
                        message: 'Network error', icon: Icons.wifi_off);
      },
    ));
  }
}
