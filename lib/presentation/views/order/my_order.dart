import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/application/payment/payment_cubit.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
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
        print(state.orders.length);
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.orders.isEmpty
                ? const Center(child: Text('No data'))
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
                    : Text('error');
        ;
      },
    ));
  }
}
