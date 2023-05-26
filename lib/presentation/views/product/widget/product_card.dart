import 'dart:convert';

import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  final Products product;
  final VoidCallback onFavoritePressed;
  final VoidCallback onPressed;
  final String rating;
  ProductCard(
      {super.key,
      required this.product,
      required this.title,
      required this.image,
      required this.price,
      required this.onFavoritePressed,
      required this.onPressed,
      required this.rating});
  ValueNotifier<bool> isFavourite = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
                Image.network(
                  image,
                  height: 150,
                  fit: BoxFit.cover,
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
                        }),
                    onPressed: () {
                      onWishlist(context);
                    },
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(
                title,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16.0,
                        color: Colors.yellow.shade700,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  onWishlist(BuildContext context) async {
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
