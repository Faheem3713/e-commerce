import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/product/product_details.dart';
import 'package:ecommerce/presentation/views/widgets/show_messsage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/product/product_bloc.dart';
import '../widgets/appbarwidget.dart';
import '../widgets/outlined_button.dart';
import 'widget/product_card.dart';
import 'widget/radio_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, this.showAppbar = false, required this.event});
  final ProductEvent event;
  final bool showAppbar;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductBloc>(context).add(event);
    });
    return Scaffold(
        appBar: showAppbar
            ? const AppBarWidget(
                isIcon: false,
              )
            : null,
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return const Center(
                  child: ShowMessagePage(
                      message: 'Error', icon: Icons.shopping_cart_outlined));
            } else if (state.products.isNotEmpty) {
              return ListView(
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
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2,
                          childAspectRatio: 1 / 1.35,
                        ),
                        itemCount: state.products.length,
                        itemBuilder: (BuildContext context, int itemIndex) {
                          return ProductCard(
                            product: state.products[itemIndex],
                            rating: '3.5',
                            onFavoritePressed: () {},
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailsPage(
                                        product: state.products[itemIndex]),
                                  ));
                            },
                          );
                        },
                      )
                    ],
                  )
                ],
              );
            } else if (state.products.isEmpty) {
              return const ShowMessagePage(
                  message: 'No products', icon: Icons.shopping_cart_outlined);
            } else {
              return const SizedBox();
            }
          },
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
                  // Wrap(
                  //   children: [
                  //     SelectionChip(
                  //       chips: const ['30', '31', '32', '33', '34'],
                  //       onSizeSelected: (p0) {},
                  //     )
                  //   ],
                  // ),
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
