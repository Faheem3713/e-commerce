import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';

import 'package:flutter/material.dart';

import '../cart/checkout_page.dart';

class OrderDetailsPage extends StatelessWidget {
  final CartItem items;

  const OrderDetailsPage({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          'Order Details',
          style: TextStyle(color: AppColor.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeading('Order Information', fontSize: 20),
            _buildOrderInfo(),
            _buildDivider(),
            _buildSectionHeading('Shipping Address', fontSize: 20),
            _buildShippingAddress(),
            _buildDivider(),
            _buildSectionHeading('Payment Details', fontSize: 20),
            _buildPaymentDetails(),
            _buildDivider(),
            _buildSectionHeading('Order Items', fontSize: 20),
            _buildOrderItems(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeading(String heading, {double fontSize = 18}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider();
  }

  Widget _buildOrderInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderInfoRow('Order Number', items.orderId!),
          _buildOrderInfoRow('Order Date', items.date!),
          _buildOrderInfoRow('Order Status', 'shipping'),
        ],
      ),
    );
  }

  Widget _buildOrderInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(value),
      ],
    );
  }

  Widget _buildShippingAddress() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            items.name!,
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            items.address!,
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            '${items.state} ${items.zipCode}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetails() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPaymentDetailRow('Payment Method', items.paymentMethod!),
          _buildPaymentDetailRow(
            'Total Amount',
            '₹${items.totalPrice.toStringAsFixed(2)}',
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetailRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(value),
      ],
    );
  }

  Widget _buildOrderItems() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              final item = items.product;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹${item.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Quantity: ${item.quantity}'),
                      Text(
                        'Total: ₹${item.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class OrderItem {
  final String name;
  final double price;
  final int quantity;

  OrderItem({
    required this.name,
    required this.price,
    required this.quantity,
  });

  double get totalPrice => price * quantity;
}
