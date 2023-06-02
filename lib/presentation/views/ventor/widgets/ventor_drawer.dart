import 'package:ecommerce/presentation/views/auth/google/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/text_styles.dart';
import '../admin_page.dart';
import '../coupon.dart';

class VentorDrawer extends StatelessWidget {
  const VentorDrawer({super.key});

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
            title: const Text(' Add product '),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => ProductAddPage()));
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
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
