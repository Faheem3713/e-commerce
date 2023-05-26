import 'package:ecommerce/application/product/product_bloc.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/home/home_page.dart';
import 'package:ecommerce/presentation/views/product/product.dart';
import 'package:ecommerce/presentation/views/order/my_order.dart';
import 'package:ecommerce/presentation/views/wishlist/wishlist.dart';
import 'package:flutter/material.dart';

import 'profile/profile.dart';
import 'widgets/appbarwidget.dart';
import 'widgets/drawer.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final List _screens = [
    const HomePage(),
    ProductPage(event: ProductEvent.allProducts()),
    const MyOrderPage(),
    const MyWishList(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectScreen,
        builder: (context, page, _) {
          return Scaffold(
            drawer: const DrawerWidget(),
            appBar: const AppBarWidget(),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: AppColor.primaryColor,
                showUnselectedLabels: true,
                unselectedItemColor: AppColor.unselectedColor,
                currentIndex: page,
                onTap: (value) {
                  selectScreen.value = value;
                },
                items: const [
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.primaryColor,
                      icon: Icon(Icons.home),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.primaryColor,
                      icon: Icon(Icons.search),
                      label: 'Search'),
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.primaryColor,
                      icon: Icon(Icons.shopping_bag_outlined),
                      label: 'Orders'),
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.primaryColor,
                      icon: Icon(Icons.favorite_outline_outlined),
                      label: 'Favourite'),
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.primaryColor,
                      icon: Icon(Icons.person_2_outlined),
                      label: 'Profile')
                ]),
            body: _screens[page],
          );
        });
  }
}

ValueNotifier<int> selectScreen = ValueNotifier(0);
