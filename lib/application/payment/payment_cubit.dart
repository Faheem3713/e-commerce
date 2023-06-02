import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/I_order_facade.dart';
import 'package:ecommerce/domain/repository/i_coupon_facade.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../presentation/views/cart/checkout_page.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  final IOrderFacade orderFacade;
  final ICouponFacade couponFacade;
  List<CartItem> cartitem = [];
  String couponCode = '';
  PaymentCubit(this.orderFacade, this.couponFacade)
      : super(PaymentState.initial());

  Future<void> initiateRazorPay(Cart items, String coupon) async {
    cartitem = items.items;
    couponCode = coupon;
    num amount = num.parse(items.totalPrice.toString()) * 100;
    var options = {
      'key': 'rzp_test_JLAXNYI4sL0URH',
      'amount': amount,
      'name': '',
      "theme.color": "#333333",
      'description': 'Shoes',
      'prefill': {'contact': '9895713713', 'email': 'test@razorpay.com'}
    };
    _razorpay.open(options);

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  Future<void> placeOrder(Cart cart, String coupon) async {
    await orderFacade.placeOrder(products: cart.items);

    couponFacade.deleteCoupon(coupon);
    Fluttertoast.showToast(msg: 'Order Successful');
  }

  void getOrders() async {
    emit(state.copyWith(isLoading: true));
    final orderData = await orderFacade.getOrders();
    emit(orderData.fold(
        (l) => PaymentState(
            isErrorOrSuccess: some(true), isLoading: false, orders: []),
        (r) => PaymentState(
            isErrorOrSuccess: none(), isLoading: false, orders: r)));
  }

  void cancelOrder(CartItem id) async {
    emit(state.copyWith(isLoading: true));
    final orderData = await orderFacade.orderCancellation(id);
    emit(orderData.fold(
        (l) => PaymentState(
            isErrorOrSuccess: some(true), isLoading: false, orders: []),
        (r) => PaymentState(
            isErrorOrSuccess: none(), isLoading: false, orders: r)));
  }

  final _razorpay = Razorpay();
  void _handlePaymentSuccess(PaymentSuccessResponse response) async {
    await orderFacade
        .placeOrder(products: cartitem)
        .then((value) => emit(state.copyWith(isErrorOrSuccess: some(true))));
    couponFacade.deleteCoupon(couponCode);
    Fluttertoast.showToast(msg: 'Payment SUCCESS');
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    emit(state.copyWith(isErrorOrSuccess: none()));
    Fluttertoast.showToast(msg: 'Payment FAILED');
  }

  void getProfiele() async {
    UserModel? data;
    emit(state.copyWith(isLoading: true));
    final user = FirebaseAuth.instance.currentUser?.phoneNumber;
    final ref = FirebaseDatabase.instance.ref();
    await ref.child('Users').once().then((value) {
      (value.snapshot.value as Map).forEach((key, values) async {
        if (values['phoneNo'] == user) {
          data = UserModel.fromJson(values);
        }
      });
    });

    emit(state.copyWith(user: data, isLoading: false));
  }

  void _handleExternalWallet(ExternalWalletResponse response) {}
}

class UserModel {
  final String name, address, zip, phoneNo, email;

  UserModel(
      {required this.phoneNo,
      required this.email,
      required this.name,
      required this.address,
      required this.zip});

  factory UserModel.fromJson(Map map) {
    return UserModel(
        email: map['email'],
        name: map['name'] ?? '',
        address: map['address'] ?? '',
        zip: map['zip'] ?? '',
        phoneNo: map['phoneNo'] ?? '');
  }
}
