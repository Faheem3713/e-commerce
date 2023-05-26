import 'package:dartz/dartz.dart';
import 'package:ecommerce/infrastructure/repository/order_repository.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:ecommerce/presentation/views/order/order_details.dart';
import '../../infrastructure/models/product_model.dart';
import '../core/failures/api_failures.dart';

abstract class IOrderFacade {
  Future<Either<MainFailure, Unit>> placeOrder(
      {required List<CartItem> products});
  Future<Either<MainFailure, List<CartItem>>> getOrders();
}
