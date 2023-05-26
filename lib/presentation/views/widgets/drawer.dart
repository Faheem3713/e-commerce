import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/admin/admin_page.dart';
import 'package:ecommerce/presentation/views/admin/coupon.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: AppColor.unselectedColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
            ),
            child: ListTile(
              style: ListTileStyle.list,
              textColor: AppColor.white,
              leading: CircleAvatar(
                child: Icon(Icons.flutter_dash),
              ),
              title: Text('Shukoor'),
              subtitle: Text(
                'Shokoor@gmail.com',
                style: CustomStyles.kSubtitleTextStyle,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' Admin '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => AdminPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' Coupons '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Coupons(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: const Text(' Products '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text(' Favourites '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text(' Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
