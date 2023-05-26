import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../presentation/views/cart/checkout_page.dart';

class RazorPayIntegration {
  RazorPayIntegration._privateConstructor();
  static final instance = RazorPayIntegration._privateConstructor();
  List<CartItem>? items;
  String returnType = 'jj';
}
