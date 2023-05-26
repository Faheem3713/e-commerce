part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required bool isLoading,
      required double subTotal,
      required List<Products> wishLlist,
      required List<Products> data,
      required Option<Either<MainFailure, Unit>> isError}) = _Initial;
  factory CartState.initial() => CartState(
      isLoading: false, isError: none(), data: [], subTotal: 0, wishLlist: []);
}
