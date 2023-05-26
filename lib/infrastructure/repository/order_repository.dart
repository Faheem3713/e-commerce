import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:ecommerce/presentation/views/cart/checkout_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import '../../domain/repository/I_order_facade.dart';

@LazySingleton(as: IOrderFacade)
class OrderRepository implements IOrderFacade {
  final FirebaseAuth _auth;
  final DatabaseReference _databaseReference;
  final IProductFacade _productFacade;

  OrderRepository(this._auth, this._databaseReference, this._productFacade);

  @override
  Future<Either<MainFailure, List<CartItem>>> getOrders() async {
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

      final orderProducts = <CartItem>[];
      for (var entry in users.entries) {
        final userData = entry.value as Map<dynamic, dynamic>?;
        final phoneNo = userData?['phoneNo']?.toString();

        if (phoneNo == currentUser.phoneNumber) {
          final productsData = await _productFacade.getProducts();

          (userData?['orders'] as Map<dynamic, dynamic>).forEach((key, value) {
            productsData.fold(
              (failure) => null,
              (products) {
                orderProducts.add(CartItem(
                    zipCode: value['zipCode'],
                    paymentMethod: value['paymentMethod'],
                    orderId: value['orderId'],
                    address: value['address'],
                    name: value['name'],
                    state: value['state'],
                    product: products.firstWhere(
                        (element) => element.id == value['product']),
                    quantity: value['quantity'],
                    date: value['date']));
              },
            );
          });
        }
      }

      return right(orderProducts);
    } on SocketException catch (_) {
      return left(const MainFailure.serverFailure());
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clietFailure());
    }
  }

  @override
  Future<Either<MainFailure, Unit>> placeOrder(
      {required List<CartItem> products}) async {
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
          final orders = userData?['orders'] as List<dynamic>? ?? [];
          orders.addAll(products);
          final dateNow = DateFormat('d-MM-y').format(DateTime.now());
          for (var e in products) {
            final key =
                _databaseReference.child('Users/${entry.key}/orders').push();

            await key.set({
              'zipCode': e.zipCode,
              'orderId': key.key,
              'paymentMethod': e.paymentMethod,
              'name': e.name,
              'state': e.state,
              'address': e.address,
              'product': e.product.id,
              'quantity': e.quantity,
              'date': dateNow
            }).whenComplete(() => log('added'));
          }
        }
      }

      return right(unit);
    } on SocketException catch (_) {
      return left(const MainFailure.serverFailure());
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.serverFailure());
    }
  }
}

// class CartItem {
//   final Products product;
//   final int quantity;
//   final String date;
//   final String name;
//   final String address;
//   final String state;
//   CartItem(
//       {required this.name,
//       required this.address,
//       required this.state,
//       required this.product,
//       required this.quantity,
//       required this.date});

//   factory CartItem.fromJson(Map<dynamic, dynamic> map) {
//     return CartItem(
//         address: map['address'],
//         state: map['state'],
//         name: map['name'],
//         product: map['product'],
//         quantity: map['quantity'],
//         date: map['date']);
//   }
// }
