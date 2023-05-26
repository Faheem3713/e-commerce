import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/payment/payment_cubit.dart';

class PaymentPage extends StatelessWidget {
  final Cart cart;
  final String couponCode;
  PaymentPage({
    Key? key,
    required this.cart,
    required this.couponCode,
  }) : super(key: key);

  ValueNotifier<int> _selectedOption = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Page'),
      ),
      body: Padding(
        padding: AppConstants.padding14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Total Amount: \$${cart.totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20),
            ),
            AppConstants.height50,
            ValueListenableBuilder(
                valueListenable: _selectedOption,
                builder: (context, data, _) {
                  return PaymentOptionTile(
                    label: 'Pay with Razorpay',
                    value: 1,
                    groupValue: _selectedOption.value,
                    onChanged: (value) {
                      _selectedOption.value = value!;
                    },
                  );
                }),
            AppConstants.height10,
            ValueListenableBuilder(
                valueListenable: _selectedOption,
                builder: (context, data, _) {
                  return PaymentOptionTile(
                    label: 'Pay from Wallet',
                    value: 2,
                    groupValue: _selectedOption.value,
                    onChanged: (value) {
                      _selectedOption.value = value!;
                    },
                  );
                }),
            AppConstants.height10,
            ValueListenableBuilder(
                valueListenable: _selectedOption,
                builder: (context, data, _) {
                  return PaymentOptionTile(
                    label: 'Cash on Delivery',
                    value: 3,
                    groupValue: _selectedOption.value,
                    onChanged: (value) {
                      _selectedOption.value = value!;
                    },
                  );
                }),
            AppConstants.height20,
            ButtonWidget(
              text: 'PROCEED TO PAY',
              width: double.infinity,
              onPressed: () {
                // Handle the payment logic based on the selected option
                switch (_selectedOption.value) {
                  case 1:
                    context
                        .read<PaymentCubit>()
                        .initiateRazorPay(cart, couponCode);

                    break;
                  case 2:
                    //pay from wallet
                    break;
                  case 3:
                    context.read<PaymentCubit>().placeOrder(cart, couponCode);
                    break;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOptionTile extends StatelessWidget {
  final String label;
  final int value;
  final int groupValue;
  final void Function(int?) onChanged;

  const PaymentOptionTile({
    Key? key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged.call(value);
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color:
              groupValue == value ? AppColor.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: groupValue == value ? Colors.blue : Colors.grey.shade400,
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            Radio<int>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: Colors.white,
            ),
            const SizedBox(width: 8.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 18.0,
                color: groupValue == value ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
