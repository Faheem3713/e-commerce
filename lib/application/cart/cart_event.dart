part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart(
      {required Products product, required String option}) = _AddToCart;
  const factory CartEvent.getCart({required String option}) = _GetCart;
  const factory CartEvent.removeCart(
      {required String option, required String id}) = _RemoveCart;
  const factory CartEvent.getWishList({required String option}) = _GetWishList;
}
