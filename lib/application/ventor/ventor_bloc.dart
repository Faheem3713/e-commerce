import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/i_coupon_facade.dart';
import 'package:ecommerce/infrastructure/models/product_model.dart';

import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_add_product.dart';
import '../../domain/core/failures/api_failures.dart';
import '../../infrastructure/models/coupon_model.dart';

part 'ventor_event.dart';
part 'ventor_state.dart';
part 'ventor_bloc.freezed.dart';

@injectable
class VentorBloc extends Bloc<VentorEvent, VentorState> {
  final ICouponFacade couponFacade;
  final IAddProductFacade addProductFacade;
  VentorBloc(this.couponFacade, this.addProductFacade)
      : super(VentorState.initial()) {
    on<_GetCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await couponFacade.getCoupon().then((value) => emit(value.fold(
          (l) => state.copyWith(isLoading: false, isError: true, coupon: []),
          (r) => state.copyWith(isLoading: false, isError: false, coupon: r))));
    });

    on<_AddProduct>((event, emit) async {
      emit(state.copyWith(isLoading: true, products: []));

      await addProductFacade.addProduct(
          productName: event.productName,
          price: event.price,
          category: event.category,
          discount: event.discount,
          brand: event.brand,
          description: event.description,
          image: event.image,
          quantity: event.quantity,
          size: event.size);
      final productData = await addProductFacade.getProducts();
      emit(productData.fold(
          (l) => state.copyWith(
              isLoading: false,
              isError: true,
              products: [],
              successOrError: some(left(l))),
          (r) => state.copyWith(
              isLoading: false,
              isError: false,
              products: r,
              successOrError: some(right(unit)))));
    });

    on<_GetProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final productData = await addProductFacade.getProducts();
      emit(productData.fold(
          (l) => state.copyWith(isLoading: false, isError: true, products: []),
          (r) =>
              state.copyWith(isLoading: false, isError: false, products: r)));
    });

    on<_DeleteProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final productData = await addProductFacade.deleteProducts(event.id);
      emit(productData.fold(
          (l) => state.copyWith(isLoading: false, isError: true, products: []),
          (r) =>
              state.copyWith(isLoading: false, isError: false, products: r)));
    });
  }
}
