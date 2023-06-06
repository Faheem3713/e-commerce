import 'dart:convert';

import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCard extends StatelessWidget {
  final Products product;
  final VoidCallback onFavoritePressed;
  final VoidCallback onPressed;
  final String rating;

  ProductCard({
    Key? key,
    required this.product,
    required this.onFavoritePressed,
    required this.onPressed,
    required this.rating,
  });

  ValueNotifier<bool> isFavourite = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context
              .read<CartBloc>()
              .state
              .wishLlist
              .map((e) => e.id)
              .toList()
              .contains(product.id)
          ? isFavourite.value = true
          : isFavourite.value = false;
    });

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    product.image[0],
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: ValueListenableBuilder(
                      valueListenable: isFavourite,
                      builder: (context, fav, _) {
                        return Icon(
                          Icons.favorite_border,
                          color: fav == true ? Colors.red : Colors.black,
                        );
                      },
                    ),
                    onPressed: () {
                      onWishlist(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    product.brand,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.yellow.shade700,
                    ),
                    AppConstants.width5,
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹${product.price}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    '₹${product.discount}',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onWishlist(BuildContext context) async {
    isFavourite.value
        ? context
            .read<CartBloc>()
            .add(CartEvent.removeCart(option: 'wishlist', id: product.id))
        : context
            .read<CartBloc>()
            .add(CartEvent.addToCart(product: product, option: 'wishlist'));
    isFavourite.value = !isFavourite.value;
    context
        .read<CartBloc>()
        .add(const CartEvent.getWishList(option: 'wishList'));
  }
}
