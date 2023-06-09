import 'package:ecommerce/application/cart/cart_bloc.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/product/product_bloc.dart';
import '../cart/cart.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.isIcon = true});

  final bool isIcon;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.primaryColor,
      title: isSearch
          ? Autocomplete(
              onSelected: (option) {
                context
                    .read<ProductBloc>()
                    .add(ProductEvent.search(searchText: option));
              },
              optionsBuilder: (textEditingValue) {
                return context
                    .read<ProductBloc>()
                    .state
                    .products
                    .map((e) => e.name)
                    .toList()
                    .where(
                        (element) => element.startsWith(textEditingValue.text))
                    .toList();
              },
            )
          : Image.asset("assets/images/ezgif 2.png"),
      actions: widget.isIcon && !isSearch
          ? [
              const CartBadge(),
              IconButton(
                icon: const Icon(Icons.search, color: AppColor.unselectedColor),
                onPressed: () {
                  setState(() {
                    isSearch = !isSearch;
                  });
                },
              )
            ]
          : [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    BlocProvider.of<ProductBloc>(context)
                        .add(ProductEvent.allProducts());
                    isSearch = !isSearch;
                  });
                },
              )
            ],
    );
  }
}

class CartBadge extends StatelessWidget {
  const CartBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => const CartPage()));
          },
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate,
          height: context.watch<CartBloc>().state.data.isNotEmpty ? 20 : 0,
          width: context.watch<CartBloc>().state.data.isNotEmpty ? 20 : 0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          child: Center(
              child: Text(
            context.watch<CartBloc>().state.data.length.toString(),
            style: const TextStyle(fontSize: 12, color: Colors.white),
          )),
        ),
      ],
    );
  }
}
