import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/failures/api_failures.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/coupon_model.dart';

class AdminManage {
  final _ref = FirebaseDatabase.instance.ref();
  final FirebaseStorage _storage = FirebaseStorage.instance;

  AdminManage._privateConstructor();

  static final AdminManage instance = AdminManage._privateConstructor();

  Future<void> addProduct(
      {required String productName,
      required int price,
      required String category,
      required int discount,
      required String brand,
      required String description,
      required List<File> image,
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
        });
      }
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
}
