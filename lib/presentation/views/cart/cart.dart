import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import '../../core/theme/text_styles.dart';
import '../widgets/appbarwidget.dart';
import '../widgets/button_widget.dart';
import '../widgets/outlined_button.dart';
import '../widgets/textfield.dart';
import 'widgets/cartcard.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final _couponController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isIcon: false),
      body: ListView(
        padding: AppConstants.padding5,
        children: [
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CartCard(
                  itemName: 'itemName',
                  itemImage: 'assets/images/aauwen-r_grey_16_1_4 2.png',
                  itemPrice: 45,
                  itemQuantity: 2,
                  orderDate: '12/03/2023'),
              separatorBuilder: (context, index) => AppConstants.height10,
              itemCount: 2),
          AppConstants.height20,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomTextField(
                      controller: _couponController,
                      placeholderText: 'Enter coupon code',
                      prefixIcon: null),
                ),
                AppConstants.width10,
                Expanded(
                    flex: 1,
                    child: CustomOutlinedbutton(
                      onPressed: () {},
                      text: 'Apply',
                    ))
              ],
            ),
          ),
          AppConstants.height10,
          ListTile(
            tileColor: AppColor.grey,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: CustomStyles.ktitleTextStyle
                      .copyWith(color: AppColor.primaryColor),
                ),
                const Text(
                  '\$199',
                  style: CustomStyles.ktitleTextStyle,
                )
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: CustomStyles.ktitleTextStyle
                      .copyWith(color: AppColor.primaryColor),
                ),
                const Text(
                  '\$19',
                  style: CustomStyles.ktitleTextStyle,
                )
              ],
            ),
          ),
          const ListTile(
            title: Text(
              'Total',
            ),
            trailing: Text(
              '\$250',
            ),
          ),
          SizedBox(
            height: 45,
            child: ButtonWidget(
                onPressed: () {},
                text: 'PROCEED TO PAYMENT',
                width: double.infinity),
          )
        ],
      ),
    );
  }
}
