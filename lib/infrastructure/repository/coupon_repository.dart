import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/i_coupon_facade.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures/api_failures.dart';
import '../models/coupon_model.dart';

@LazySingleton(as: ICouponFacade)
class CouponRepository implements ICouponFacade {
  final DatabaseReference _ref;

  CouponRepository(this._ref);
  @override
  Future<int> checkCoupon(String couponCode, bool isDelete) async {
    try {
      final couponData =
          (await _ref.child('coupons').get()).value as Map<dynamic, dynamic>;
      final matchingCoupon = couponData.values.firstWhere(
        (value) => value['coupon'] == couponCode,
        orElse: () => null,
      );
      if (matchingCoupon != null) {
        return matchingCoupon['used'] ? -1 : matchingCoupon['percent'] ?? 0;
      }

      return 0;
    } catch (e) {
      log(e.toString());
      return 0;
    }
  }

  @override
  Future<void> deleteCoupon(String couponCode) async {
    try {
      final couponRef = (await _ref.child('coupons').get()).value as Map;
      couponRef.forEach((key, value) async {
        print(couponCode);
        if (value['coupon'] == couponCode) {
          log('message');
          await _ref.child('coupons/$key').update({'used': true});
        }
      });
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<Either<MainFailure, Unit>> addCoupon({
    required String couponCode,
    required int percentage,
  }) async {
    try {
      await _ref.child('coupons').push().set({
        'coupon': couponCode,
        'percent': percentage,
        'used': false,
      });
      return right(unit);
    } catch (e) {
      return left(const MainFailure.serverFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Coupon>>> getCoupon() async {
    try {
      final values = await _ref.child('coupons').once();
      final couponData = values.snapshot.value as Map<dynamic, dynamic>;
      final coupons =
          couponData.values.map((value) => Coupon.fromJson(value)).toList();

      return right(coupons);
    } catch (e) {
      return left(const MainFailure.clietFailure());
    }
  }
}
