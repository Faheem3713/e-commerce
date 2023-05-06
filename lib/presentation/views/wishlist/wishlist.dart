import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import '../widgets/outlined_button.dart';
import '../widgets/selection_chip.dart';

class MyWishList extends StatefulWidget {
  const MyWishList({super.key});

  @override
  State<MyWishList> createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: AppConstants.padding10,
        children: [
          const Text(
            'My Wishlist',
            style: CustomStyles.titleLarge,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) => WishlistCard(
                productName: 'productName',
                productImage: 'assets/images/aauwen-r_grey_16_1_4 2.png',
                productPrice: 7),
            separatorBuilder: (context, index) => AppConstants.height10,
          )
        ],
      ),
    );
  }
}

class WishlistCard extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productPrice;

  WishlistCard(
      {super.key,
      required this.productName,
      required this.productImage,
      required this.productPrice});

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
                    image: AssetImage(productImage),
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
                      productName,
                      style: const TextStyle(),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      '\$$productPrice',
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 5.0),
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
              TextButton(onPressed: () {}, child: const Text('Remove')),
              CustomOutlinedbutton(
                text: 'Add to cart',
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
