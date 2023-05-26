import 'dart:developer';

import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/product/product_bloc.dart';
import 'widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: AppConstants.padding14,
        children: [
          Row(
            children: [
              Expanded(
                child: HomeCard(
                  event: ProductEvent.men(),
                  image: 'assets/images/men.png',
                ),
              ),
              AppConstants.width10,
              Expanded(
                child: HomeCard(
                  event: ProductEvent.women(),
                  image: 'assets/images/women.png',
                ),
              )
            ],
          ),
          AppConstants.height10,
          HomeCard(event: ProductEvent.kids(), image: 'assets/images/kids.png'),
          AppConstants.height10,
          HomeCard(
            event: ProductEvent.kids(),
            image: 'assets/images/kids.png',
          )
        ],
      ),
    );
  }
}
