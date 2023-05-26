import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';

abstract class ICartFacade {
  Future<Either<MainFailure, Unit>> addToCart(
      {required Products product, required String option});
  Future<Either<MainFailure, List<Products>>> getCart(String option);

  Future<Either<MainFailure, List<Products>>> removeCart(
      {required String id, required String option});
}
