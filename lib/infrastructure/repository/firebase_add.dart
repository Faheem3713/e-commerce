import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_add_product.dart';

@LazySingleton(as: IAddProductFacade)
class AdminManage implements IAddProductFacade {
  final DatabaseReference _ref;
  final FirebaseStorage _storage;
  final IProductFacade productFacade;
  final user = FirebaseAuth.instance.currentUser!.email;
  AdminManage(this._ref, this._storage, this.productFacade);

  @override
  Future<void> addProduct(
      {required String productName,
      required int price,
      required String category,
      required int discount,
      required String brand,
      required String description,
      required List<File> image,
      required int quantity,
      required List<int> size}) async {
    try {
      final imageUrls = await Future.wait(image.map(uploadFile));

      final key = _ref.child('Products').push().key;
      if (key != null) {
        final productRef = _ref.child('Products/$key');
        await productRef.set({
          'id': key,
          'discount': discount,
          'ProductName': productName,
          'Price': price,
          'Category': category,
          'Brand': brand,
          'Description': description,
          'Image': imageUrls,
          'size': size,
          'quantity': quantity,
          'ventor': user
        });
      }
      await _ref.child('Ventors').once().then((value) {
        print(FirebaseAuth.instance.currentUser);
        (value.snapshot.value as Map).forEach((id, value) async {
          if (value['email'] == FirebaseAuth.instance.currentUser!.email) {
            List data = [...value['products'] ?? []];
            data.add(key);
            await _ref.child('Ventors/$id').update({'products': data});
          }
        });
      });
    } catch (e) {
      log(e.toString());
    }
  }

  Future<String> uploadFile(File image) async {
    final storageReference = _storage.ref().child('posts/${image.path}');
    final uploadTask = storageReference.putFile(image);

    final snapshot = await uploadTask.whenComplete(() {});
    return await snapshot.ref.getDownloadURL();
  }

  @override
  Future<Either<MainFailure, List<Products>>> getProducts() async {
    try {
      List products = [];
      final productsData = (await _ref.child('Ventors').get()).value as Map;
      productsData.forEach((key, value) {
        if (value['email'] == user) {
          products.addAll(value['products']);
        }
      });
      List<Products> allProducts =
          List.from((await productFacade.getProducts()).getOrElse(() => []));

      return right(allProducts.where((e) => products.contains(e.id)).toList());
    } on SocketException catch (_) {
      return left(const MainFailure.serverFailure());
    } catch (_) {
      return left(const MainFailure.clietFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Products>>> deleteProducts(String id) async {
    try {
      List products = [];
      final productsData = (await _ref.child('Ventors').get()).value as Map;
      productsData.forEach((key, value) async {
        if (value['email'] == user) {
          products.addAll(value['products']);
          products.removeWhere((element) => element == id);
          await _ref.child('Ventors/$key').update({'products': products});
        }
      });
      final allproducts = await getProducts();

      return right(allproducts.getOrElse(() => []));
    } on SocketException catch (_) {
      return left(const MainFailure.serverFailure());
    } catch (_) {
      return left(const MainFailure.clietFailure());
    }
  }
}
