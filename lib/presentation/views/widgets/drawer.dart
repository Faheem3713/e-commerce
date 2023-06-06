import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/core/theme/text_styles.dart';
import 'package:ecommerce/presentation/views/auth/phone/phone_auth.dart';
import 'package:ecommerce/presentation/views/ventor/coupon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/payment/payment_cubit.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: AppColor.unselectedColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
            ),
            child: BlocBuilder<PaymentCubit, PaymentState>(
              builder: (context, state) {
                return ListTile(
                  style: ListTileStyle.list,
                  textColor: AppColor.white,
                  leading: const CircleAvatar(
                    child: Icon(Icons.flutter_dash),
                  ),
                  title: Text(state.user?.name ?? ''),
                  subtitle: Text(
                    state.user?.email ?? '',
                    style: CustomStyles.kSubtitleTextStyle,
                  ),
                );
              },
            ),
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
              FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhoneAuth(),
                  ),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
