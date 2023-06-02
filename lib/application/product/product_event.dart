part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  factory ProductEvent.allProducts() = _AllProducts;
  factory ProductEvent.men() = _Men;
  factory ProductEvent.women() = _Women;
  factory ProductEvent.kids() = _Kids;
  factory ProductEvent.uniSex() = _UniSex;
  factory ProductEvent.search({required String searchText}) = _Search;
}
