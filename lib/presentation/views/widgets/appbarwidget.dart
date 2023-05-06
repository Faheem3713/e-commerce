import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../cart/cart.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.isIcon = true});

  final bool isIcon;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.primaryColor,
      title: isSearch
          ? TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isSearch = !isSearch;
                        });
                      },
                      icon: const Icon(Icons.close))),
            )
          : Image.asset("assets/images/ezgif 2.png"),
      actions: widget.isIcon && !isSearch
          ? [
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: AppColor.unselectedColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => CartPage()));
                },
              ),
              IconButton(
                icon: const Icon(Icons.search, color: AppColor.unselectedColor),
                onPressed: () {
                  setState(() {
                    isSearch = !isSearch;
                  });
                },
              )
            ]
          : [],
    );
  }
}
