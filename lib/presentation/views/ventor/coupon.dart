import 'package:ecommerce/application/ventor/ventor_bloc.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:ecommerce/presentation/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Coupons extends StatelessWidget {
  Coupons({super.key});
  final _couponCodeController = TextEditingController();
  final _percentageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<VentorBloc>().add(const VentorEvent.getCoupon());
    });
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Coupon'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextField(
                      prefixIcon: Icons.local_offer_outlined,
                      controller: _couponCodeController,
                      placeholderText: 'Coupon Code'),
                  AppConstants.height10,
                  CustomTextField(
                      prefixIcon: Icons.percent,
                      controller: _percentageController,
                      placeholderText: 'Percentage'),
                  AppConstants.height10,
                  ButtonWidget(
                      text: 'ADD COUPON',
                      onPressed: () {
                        context.read<VentorBloc>().add(VentorEvent.addCoupon(
                            couponCode: _couponCodeController.text,
                            percent: int.parse(_percentageController.text)));
                        //   Navigator.pop(context);
                      },
                      width: double.infinity)
                ],
              ),
            ),
          );
        },
      ),
      body: BlocBuilder<VentorBloc, VentorState>(
        builder: (context, state) {
          return state.isLoading
              ? const CircularProgressIndicator()
              : state.coupon.isEmpty
                  ? const Text('ii')
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        final coupon = state.coupon[index];
                        return ListTile(
                          leading: Text(coupon.couponCode),
                        );
                      },
                      itemCount: state.coupon.length,
                    );
        },
      ),
    );
  }
}
