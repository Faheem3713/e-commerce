import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductFacade)
class ProductRepository implements IProductFacade {
  final DatabaseReference _databaseReference;

  ProductRepository(this._databaseReference);

  @override
  Future<Either<MainFailure, List<Products>>> getProducts() async {
    try {
      final response = await http.get(Uri.parse(
          'https://e-commerce-fa443-default-rtdb.asia-southeast1.firebasedatabase.app/Products.json'));
      if (response.statusCode == 200) {
        final decodedResponse =
            jsonDecode(response.body) as Map<dynamic, dynamic>;

        final products = decodedResponse.values
            .map<Products>((value) => Products.fromJson(value))
            .toList();
        return right(products);
      } else {
        return left(const MainFailure.clietFailure());
      }
    } on SocketException catch (e) {
      log(e.toString());
      return left(const MainFailure.serverFailure());
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clietFailure());
    }
  }
}
