import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/product/product_details.dart';
import 'package:flutter/material.dart';
import '../widgets/selection_chip.dart';
import '../widgets/appbarwidget.dart';
import '../widgets/outlined_button.dart';

import 'widget/product_card.dart';
import 'widget/radio_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, this.showAppbar = false});
  final bool showAppbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: showAppbar
            ? const AppBarWidget(
                isIcon: false,
              )
            : null,
        body: ListView(
          padding: AppConstants.padding10,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('All products'),
                    CustomOutlinedbutton(
                      text: 'Filter',
                      onPressed: () {
                        filterDialogue(context);
                      },
                    )
                  ],
                ),
                AppConstants.height10,
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 1 / 1.35,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return ProductCard(
                      rating: '3.5',
                      onFavoritePressed: () {},
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ));
                      },
                      image: 'assets/images/aauwen-r_grey_16_1_4 2.png',
                      title: 'title',
                      price: '199',
                    );
                  },
                ),
                // Add any widgets or text you want to appear below the GridView here
              ],
            )
          ],
        ));
  }

  filterDialogue(BuildContext context) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text('Filters'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Sort by'),
                  const RadioButton(
                      text: 'Low to heigh', type: SortType.lowToHigh),
                  const RadioButton(
                      text: 'Heigh to Low', type: SortType.highToLow),
                  AppConstants.height10,
                  const Text('Size'),
                  AppConstants.height10,
                  Wrap(
                    children: [
                      SelectionChip(
                        chips: const ['30', '31', '32', '33', '34'],
                        onSizeSelected: (p0) {},
                      )
                    ],
                  ),
                  AppConstants.height10,
                  CustomOutlinedbutton(
                    text: 'Apply',
                    onPressed: () {},
                  )
                ],
              ),
            ));
  }
}
