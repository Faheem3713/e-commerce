part of 'ventor_bloc.dart';

@freezed
class VentorEvent with _$VentorEvent {
  const factory VentorEvent.addCoupon(
      {required String couponCode, required int percent}) = _AddCoupon;
  const factory VentorEvent.getCoupon() = _GetCoupon;
  const factory VentorEvent.addProduct(
      {required String productName,
      required int price,
      required String category,
      required int discount,
      required String brand,
      required String description,
      required List<File> image,
      required int quantity,
      required List<int> size}) = _AddProduct;
  const factory VentorEvent.getProducts() = _GetProducts;
  const factory VentorEvent.deleteProduct(String id) = _DeleteProducts;
}
