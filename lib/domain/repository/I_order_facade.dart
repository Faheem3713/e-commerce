import 'package:dartz/dartz.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import '../core/failures/api_failures.dart';

abstract class IOrderFacade {
  Future<Either<MainFailure, Unit>> placeOrder(
      {required List<CartItem> products});
  Future<Either<MainFailure, List<CartItem>>> getOrders();
  Future<Either<MainFailure, List<CartItem>>> orderCancellation(CartItem id);
}
