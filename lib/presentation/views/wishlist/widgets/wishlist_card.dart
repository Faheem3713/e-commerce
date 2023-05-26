import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/outlined_button.dart';
import '../../widgets/selection_chip.dart';

class WishlistCard extends StatelessWidget {
  final Products product;

  const WishlistCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: AppConstants.padding5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.image[0]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      '₹${product.price}',
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                    AppConstants.height5
                  ],
                ),
              ),
            ],
          ),
          AppConstants.height10,
          Row(
            children: [
              const Text('Size:'),
              AppConstants.width10,
              SelectionChip(
                  chips: const ['39', '40', '41'], onSizeSelected: (value) {}),
            ],
          ),
          AppConstants.height10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    context.read<CartBloc>().add(CartEvent.removeCart(
                        option: 'wishlist', id: product.id));
                  },
                  child: const Text('Remove')),
              CustomOutlinedbutton(
                text: 'Add to cart',
                onPressed: () {
                  context.read<CartBloc>().add(
                      CartEvent.addToCart(product: product, option: 'cart'));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
