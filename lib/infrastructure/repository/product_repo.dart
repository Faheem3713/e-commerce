import 'dart:developer';
import 'dart:io';

import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductFacade)
class ProductRepository implements IProductFacade {
  final DatabaseReference _ref;
  ProductRepository(this._ref);
  @override
  Future<Either<MainFailure, List<Products>>> getProducts() async {
    try {
      final products = ((await _ref.child('Products').get()).value as Map)
          .values
          .map((e) => Products.fromJson(e))
          .toList();
      return right(products);
    } on SocketException catch (e) {
      log(e.toString());
      return left(const MainFailure.serverFailure());
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clietFailure());
    }
  }
}
