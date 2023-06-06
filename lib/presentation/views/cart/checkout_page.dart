import 'package:ecommerce/application/payment/payment_cubit.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/cart/payment_page.dart';
import 'package:ecommerce/presentation/views/widgets/outlinedTextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../infrastructure/models/product_model.dart';
import '../widgets/button_widget.dart';

class CheckoutPage extends StatelessWidget {
  final Cart cart;
  final String couponCode;
  CheckoutPage({super.key, required this.cart, required this.couponCode});

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _zipController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          'Checkout',
          style: TextStyle(color: AppColor.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping Address',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              OutlinedTextField(
                controller: _nameController,
                placeholderText: 'Name',
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              OutlinedTextField(
                controller: _addressController,
                placeholderText: 'Address',
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: OutlinedTextField(
                      controller: _cityController,
                      placeholderText: 'City',
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: OutlinedTextField(
                      controller: _stateController,
                      placeholderText: 'State',
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your state';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: OutlinedTextField(
                      keyBoardType: TextInputType.phone,
                      controller: _zipController,
                      placeholderText: 'Zip',
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your zip code';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              AppConstants.height20,
              const Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppConstants.height10,
              Expanded(
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    final item = cart.items[index];
                    return ListTile(
                      title: Text(item.product.name),
                      subtitle:
                          Text('${item.quantity} x ₹${item.product.price}'),
                      trailing: Text('₹${item.totalPrice.toStringAsFixed(2)}'),
                    );
                  },
                ),
              ),
              AppConstants.height10,
              Text(
                'Total: ₹${cart.totalPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppConstants.height10,
              BlocBuilder<PaymentCubit, PaymentState>(
                builder: (context, state) {
                  return ButtonWidget(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await _placeOrder(context);
                        }
                      },
                      text: 'PLACE ORDER',
                      width: double.infinity);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _placeOrder(BuildContext context) async {
    if (_zipController.text.isEmpty ||
        _addressController.text.isEmpty ||
        _nameController.text.isEmpty ||
        _stateController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Field cannot be empty')));
      return;
    }
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PaymentPage(
              couponCode: couponCode,
              cart: Cart(
                discount: cart.discount,
                items: cart.items
                    .map((e) => CartItem(
                        totalQty: e.totalQty,
                        zipCode: _zipController.text,
                        paymentMethod: 'COD',
                        product: e.product,
                        quantity: e.quantity,
                        address: _addressController.text,
                        name: _nameController.text,
                        state: _stateController.text))
                    .toList(),
              )),
        ));
  }
}

class Cart {
  final List<CartItem> items;
  double get totalPrice {
    return (items.fold(0 - discount, (acc, item) => acc + item.totalPrice));
  }

  final double discount;
  Cart({
    required this.discount,
    required this.items,
  });
}

class CartItem {
  final Products product;
  final int quantity;
  final int totalQty;
  final String? date;
  final String? name;
  final String? address;
  final String? state;
  final String? orderId;
  final String? paymentMethod;
  final String? zipCode;
  final bool? isCancel;
  CartItem(
      {this.paymentMethod,
      this.isCancel,
      required this.totalQty,
      this.zipCode,
      this.name,
      this.address,
      this.state,
      this.orderId,
      required this.product,
      required this.quantity,
      this.date});

  factory CartItem.fromJson(Map<dynamic, dynamic> map) {
    return CartItem(
        totalQty: map['totalQty'],
        zipCode: map['zipCode'],
        paymentMethod: 'paymentMethod',
        orderId: map['orderId'],
        address: map['address'],
        state: map['state'],
        name: map['name'],
        product: map['product'],
        quantity: map['quantity'],
        isCancel: map['isCancel'] ?? false,
        date: map['date']);
  }

  double get totalPrice => product.price.toDouble() * quantity;
}

class Address {
  final String name;
  final String addressLine1;
  final String addressLine2;
  final String city;
  final String state;
  final String zipCode;

  Address({
    required this.name,
    required this.addressLine1,
    required this.city,
    required this.state,
    required this.zipCode,
    this.addressLine2 = '',
  });
}
