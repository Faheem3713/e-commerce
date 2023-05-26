part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {required List<Products> products,
      required bool isError,
      required bool isLoading}) = _Initial;
  factory ProductState.initial() =>
      const ProductState(products: [], isError: false, isLoading: false);
}
