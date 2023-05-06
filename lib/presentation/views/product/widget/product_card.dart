import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  final VoidCallback onFavoritePressed;
  final VoidCallback onPressed;
  final String rating;
  ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.onFavoritePressed,
    required this.onPressed,
    required this.rating,
  });
  ValueNotifier<bool> isFavourite = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
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
                Image.asset(
                  image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: ValueListenableBuilder(
                        valueListenable: isFavourite,
                        builder: (context, isFav, _) {
                          return Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            color: isFav ? Colors.red : Colors.black,
                          );
                        }),
                    onPressed: () {
                      isFavourite.value = !isFavourite.value;
                    },
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(title),
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
}
