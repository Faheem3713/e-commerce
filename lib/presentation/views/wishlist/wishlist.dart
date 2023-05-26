import 'dart:developer';

import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/wishlist_card.dart';

class MyWishList extends StatefulWidget {
  const MyWishList({super.key});
  @override
  State<MyWishList> createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<CartBloc>()
          .add(const CartEvent.getWishList(option: 'wishlist'));
    });
    return Scaffold(
        body: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      return BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : state.wishLlist.isEmpty
                  ? const Center(child: Text('No data'))
                  : ListView(
                      padding: AppConstants.padding10,
                      children: [
                        const Text(
                          'My Wishlist',
                          style: CustomStyles.titleLarge,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.wishLlist.length,
                          itemBuilder: (context, index) {
                            final data = state.wishLlist[index];
                            return WishlistCard(
                              product: data,
                            );
                          },
                          separatorBuilder: (context, index) =>
                              AppConstants.height10,
                        )
                      ],
                    );
        },
      );
    }));
  }
}
