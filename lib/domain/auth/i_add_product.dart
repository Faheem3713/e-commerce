import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';

import '../../infrastructure/models/product_model.dart';

abstract class IAddProductFacade {
  Future<void> addProduct(
      {required String productName,
      required int price,
      required String category,
      required int discount,
      required String brand,
      required String description,
      required List<File> image,
      required int quantity,
      required List<int> size});

  Future<Either<MainFailure, List<Products>>> getProducts();
  Future<Either<MainFailure, List<Products>>> deleteProducts(String id);
}
