import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/widgets/appbarwidget.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:ecommerce/presentation/views/widgets/selection_chip.dart';

import '../../../application/cart/cart_bloc.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  final Products product;

  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isIcon: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => product.image.isEmpty
                          ? const SizedBox()
                          : Image.network(
                              product.image[index],
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                      itemCount: product.image.length,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      product.name,
                      style: CustomStyles.titleLarge,
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          '₹${product.price}',
                          style: CustomStyles.titleLarge.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '₹${product.discount}',
                          style: CustomStyles.titleLarge.copyWith(
                            color: AppColor.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Size: ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SelectionChip(
                          chips: product.sizes,
                          onSizeSelected: (value) {
                            selectedSize = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product.description,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildStockStatus(product.quantity),
            const SizedBox(height: 16),
            Container(
              color: AppColor.unselectedColor,
              child: ButtonWidget(
                width: double.infinity,
                text: 'ADD TO CART',
                onPressed: () {
                  if (selectedSize.isEmpty) {
                    Fluttertoast.showToast(msg: 'Please select a size');
                    return;
                  }
                  if (product.quantity == 0) {
                    Fluttertoast.showToast(msg: 'Out of stock');
                    return;
                  }
                  context.read<CartBloc>().add(
                        CartEvent.addToCart(
                          product: product,
                          option: 'cart',
                        ),
                      );
                  context.read<CartBloc>().add(
                        const CartEvent.getCart(option: 'cart'),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStockStatus(int stock) {
    if (stock == 0) {
      return const Text(
        'Out of stock',
        style: TextStyle(
          color: AppColor.red,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      );
    } else {
      return Text(
        'Stock: $stock',
        style: TextStyle(
          color: AppColor.unselectedColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      );
    }
  }
}
