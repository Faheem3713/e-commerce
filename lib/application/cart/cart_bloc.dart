import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/I_order_facade.dart';
import 'package:ecommerce/domain/repository/i_cart_facade.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures/api_failures.dart';
import '../../infrastructure/models/product_model.dart';
import '../../presentation/views/cart/checkout_page.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartFacade cartFacade;
  final IOrderFacade orderFacade;

  CartBloc(this.cartFacade, this.orderFacade) : super(CartState.initial()) {
    on<_AddToCart>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await cartFacade.addToCart(product: event.product, option: event.option);
      final data = await cartFacade.getCart(event.option);

      emit(data.fold(
          (l) => state.copyWith(
              isLoading: false, data: [], isError: some(left(l)), subTotal: 0),
          (r) => state.copyWith(
              isLoading: false,
              data: r,
              isError: none(),
              subTotal: r.isNotEmpty
                  ? r
                      .map((e) => e.price)
                      .toList()
                      .reduce((value, element) => value + element)
                      .toDouble()
                  : 0)));
    });

    on<_GetCart>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, data: [], isError: none(), subTotal: 0));
      final data = await cartFacade.getCart(event.option);

      emit(data.fold(
          (l) => state.copyWith(
              isLoading: false, data: [], isError: some(left(l)), subTotal: 0),
          (r) => state.copyWith(
              isLoading: false,
              data: r,
              isError: none(),
              subTotal: r.isNotEmpty
                  ? r
                      .map((e) => e.price)
                      .toList()
                      .reduce((value, element) => value + element)
                      .toDouble()
                  : 0)));
      log(state.data.toString());
    });

    on<_RemoveCart>((event, emit) async {
      emit(state.copyWith(isLoading: true, data: []));
      final cartDeletion =
          await cartFacade.removeCart(id: event.id, option: event.option);
      emit(cartDeletion.fold(
          (l) => state.copyWith(isLoading: false, isError: some(left(l))),
          (r) => event.option == 'cart'
              ? state.copyWith(isError: none(), isLoading: false, data: r)
              : state.copyWith(
                  isError: none(), isLoading: false, wishLlist: r)));
    });

    on<_GetWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final getWishlist = await cartFacade.getCart('wishlist');
      emit(getWishlist.fold(
          (l) => state.copyWith(
              isLoading: false, isError: some(left(l)), wishLlist: []),
          (r) =>
              state.copyWith(isLoading: false, isError: none(), wishLlist: r)));
    });
  }
}
