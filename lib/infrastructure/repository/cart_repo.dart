import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:ecommerce/domain/repository/i_cart_facade.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICartFacade)
class CartRepository implements ICartFacade {
  final FirebaseAuth _auth;
  final DatabaseReference _databaseReference;
  final IProductFacade _productFacade;

  CartRepository(this._auth, this._databaseReference, this._productFacade);

  @override
  Future<Either<MainFailure, Unit>> addToCart(
      {required Products product, required String option}) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        return left(const MainFailure.serverFailure());
      }

      final data = await _databaseReference.child('Users').once();
      final users = data.snapshot.value as Map<dynamic, dynamic>?;

      if (users == null) {
        return left(const MainFailure.serverFailure());
      }

      for (var entry in users.entries) {
        final userData = entry.value as Map<dynamic, dynamic>?;
        final phoneNo = userData?['phoneNo']?.toString();

        if (phoneNo == currentUser.phoneNumber) {
          List cart = List.from(userData?[option] as List<dynamic>? ?? []);
          if (cart.contains(product.id)) {
            Fluttertoast.showToast(msg: 'Already added');
            return right(unit);
          }
          cart.add(product.id);
          await _databaseReference
              .child('Users')
              .child(entry.key as String)
              .update({option: cart.toSet().toList()});
        }
      }
      Fluttertoast.showToast(msg: 'Added to $option');
      return right(unit);
    } on SocketException catch (_) {
      return left(const MainFailure.serverFailure());
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.serverFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Products>>> getCart(String option) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        return left(const MainFailure.serverFailure());
      }

      final data = await _databaseReference.child('Users').once();
      final users = data.snapshot.value as Map<dynamic, dynamic>?;

      if (users == null) {
        return left(const MainFailure.serverFailure());
      }

      final cartProducts = <Products>[];

      for (var entry in users.entries) {
        final userData = entry.value as Map<dynamic, dynamic>?;
        final phoneNo = userData?['phoneNo']?.toString();

        if (phoneNo == currentUser.phoneNumber) {
          final cart = userData?[option] as List<dynamic>? ?? [];
          final productsData = await _productFacade.getProducts();
          productsData.fold(
            (failure) => null,
            (products) {
              cartProducts.addAll(
                  products.where((product) => cart.contains(product.id)));
            },
          );
        }
      }

      return right(cartProducts);
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.serverFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Products>>> removeCart(
      {required String id, required String option}) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        return left(const MainFailure.serverFailure());
      }

      final data = await _databaseReference.child('Users').once();
      final users = data.snapshot.value as Map<dynamic, dynamic>?;

      if (users == null) {
        return left(const MainFailure.serverFailure());
      }
      List<Products> cartProducts = [];
      for (var entry in users.entries) {
        final userData = entry.value as Map<dynamic, dynamic>?;
        final phoneNo = userData?['phoneNo'];

        if (phoneNo.toString() == currentUser.phoneNumber) {
          List cart = List.from(userData?[option] as List<dynamic>? ?? []);
          log(id.toString());
          cart.remove(id);
          log(cart.toString());

          await _databaseReference
              .child('Users')
              .child(entry.key as String)
              .update({option: cart});
          final productsData = await _productFacade.getProducts();
          productsData.fold(
            (failure) => null,
            (products) {
              cartProducts.addAll(
                  products.where((product) => cart.contains(product.id)));
            },
          );
          await _databaseReference.
        }
      }
      return right(cartProducts);
    } catch (e) {
      return left(const MainFailure.serverFailure());
    }
  }

  @override
  Future<void> cartRemoval() async {
    await _databaseReference.child('Users').once().then((value) {
      (value.snapshot.value as Map).forEach((key, value) async {
        if (_auth.currentUser!.phoneNumber == value['phoneNo']) {
          _databaseReference.child('Users/$key/cart').remove();
        }
      });
    });
  }
}
