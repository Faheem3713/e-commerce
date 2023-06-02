import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
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
                    isCancel: value['isCancel'],
                    totalQty: value['totalQty'],
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
          final dateNow = DateFormat('d-MM-y').format(DateTime.now());
          for (var e in products) {
            await _databaseReference
                .child('Users/${entry.key}/orders')
                .update(({e.product.id: ''}));
            await _databaseReference
                .child('Users/${entry.key}/orders/${e.product.id}')
                .update({
              'totalQty': e.totalQty,
              'zipCode': e.zipCode,
              'orderId': e.product.id,
              'paymentMethod': e.paymentMethod,
              'name': e.name,
              'state': e.state,
              'address': e.address,
              'product': e.product.id,
              'quantity': e.quantity,
              'date': dateNow
            }).whenComplete(() => log('added'));
            await _databaseReference
                .child('Products/${e.product.id}')
                .update({'quantity': e.totalQty - e.quantity});
            paymentSettlemnt(e.product.ventor, e.product.price.toDouble());
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

  paymentSettlemnt(String ventor, double productPrice) async {
    await _databaseReference.child('Ventors').once().then((values) async {
      final ventorData = values.snapshot.value as Map;
      ventorData.forEach((key, value) async {
        if (value['email'] == ventor) {
          final moneyInWallet = value['wallet'] ?? 0;
          await _databaseReference
              .child('Ventors/$key')
              .update({'wallet': productPrice + moneyInWallet});
        }
      });
    });
    double amount = productPrice * 3 / 100;
    await _databaseReference.child('Admin').set({'wallet': amount});
  }

  @override
  Future<Either<MainFailure, List<CartItem>>> orderCancellation(
      CartItem cartItem) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        return left(const MainFailure.serverFailure());
      }

      await _databaseReference.child('Users').once().then((values) {
        final data = values.snapshot.value as Map;
        data.forEach((key, value) {
          if (value['phoneNo'] == _auth.currentUser!.phoneNumber) {
            _databaseReference
                .child('Users/$key/orders/${cartItem.product.id}')
                .update({'isCancel': true});
          }
        });
      });
      settleCancellation(cartItem);
      List<CartItem> orderProducts = (await getOrders()).getOrElse(() => []);
      return right(orderProducts);
    } on SocketException catch (_) {
      return left(const MainFailure.serverFailure());
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clietFailure());
    }
  }

  settleCancellation(CartItem cartItem) {
    _databaseReference.child('Ventors').once().then((value) {
      (value.snapshot.value as Map).forEach((key, value) {
        print(cartItem.product.ventor);
        if (value['email'] == cartItem.product.ventor) {
          final amount = value['wallet'];
          _databaseReference
              .child('Ventors/$key')
              .update({'wallet': amount - 300});
        }
      });
    });

    _databaseReference.child('Users').once().then((value) {
      (value.snapshot.value as Map).forEach((key, value) {
        if (value['phoneNo'] == _auth.currentUser?.phoneNumber) {
          final amount = value['wallet'];
          _databaseReference
              .child('Users/$key')
              .update({'wallet': amount + 40});
        }
      });
    });
  }
}
