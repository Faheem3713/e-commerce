import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/product/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: AppConstants.padding14,
        children: [
          Row(
            children: const [
              HomeCard(
                image: 'assets/images/men.png',
              ),
              AppConstants.width10,
              HomeCard(
                image: 'assets/images/women.png',
              )
            ],
          ),
          AppConstants.height10,
          const HomeCard(image: 'assets/images/kids.png'),
          AppConstants.height10,
          const HomeCard(
            image: 'assets/images/kids.png',
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => const ProductPage(
                      showAppbar: true,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .433,
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.black),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
