import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';

abstract class IProductFacade {
  Future<Either<MainFailure, List<Products>>> getProducts();
}
