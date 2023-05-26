import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';

import '../../infrastructure/models/coupon_model.dart';

abstract class ICouponFacade {
  Future<int> checkCoupon(String couponCode, bool isDelete);
  Future<void> deleteCoupon(String couponCode);
  Future<Either<MainFailure, Unit>> addCoupon(
      {required String couponCode, required int percentage});
  Future<Either<MainFailure, List<Coupon>>> getCoupon();
}
