import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/widgets/appbarwidget.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:ecommerce/presentation/views/widgets/selection_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../application/cart/cart_bloc.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key, required this.product});
  final Products product;
  String shoeSize = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isIcon: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
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
            const Text(
              '. . . . .',
              style: TextStyle(
                  color: AppColor.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
            ListTile(
              onTap: () {},
              title: Text(product.name),
              subtitle: Row(
                children: [
                  Text(
                    '₹${product.price}',
                    style: CustomStyles.titleLarge
                        .copyWith(decoration: TextDecoration.lineThrough),
                  ),
                  AppConstants.width10,
                  Text(
                    '₹${product.discount}',
                    style:
                        CustomStyles.titleLarge.copyWith(color: AppColor.red),
                  ),
                ],
              ),
            ),
            AppConstants.kdivider,
            Row(
              children: [
                const Text('Size '),
                SelectionChip(
                  chips: product.sizes,
                  onSizeSelected: (value) {
                    shoeSize = value;
                  },
                ),
              ],
            ),
            const Text(
              '\nDescription:\n',
              style: CustomStyles.titleLarge,
            ),
            Text('${product.description}\n'),
            Container(
              color: AppColor.unselectedColor,
              child: ButtonWidget(
                width: double.infinity,
                text: 'ADD TO CART',
                onPressed: () {
                  if (shoeSize.isEmpty) {
                    Fluttertoast.showToast(msg: 'Select the size');
                    return;
                  }
                  context.read<CartBloc>().add(
                      CartEvent.addToCart(product: product, option: 'cart'));
                  context
                      .read<CartBloc>()
                      .add(const CartEvent.getCart(option: 'cart'));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
