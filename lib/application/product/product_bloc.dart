import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/product_facade.dart';
import 'package:ecommerce/infrastructure/repository/product_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/failures/api_failures.dart';
import '../../infrastructure/models/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductFacade _productFacade;
  ProductBloc(this._productFacade) : super(ProductState.initial()) {
    on<_AllProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true, products: [], isError: false));
      final productData = await _productFacade.getProducts();
      emit(productData.fold(
          (l) => state.copyWith(isLoading: false, isError: true),
          (r) => state.copyWith(products: r, isLoading: false)));
    });

    on<_Men>((event, emit) async {
      emit(const ProductState(products: [], isError: false, isLoading: true));
      final productData = await _productFacade.getProducts();
      emit(productData.fold(
          (l) =>
              const ProductState(isLoading: false, isError: true, products: []),
          (r) {
        return ProductState(
            products: r.where((element) {
              return element.category == 'Men' || element.category == 'Unisex';
            }).toList(),
            isLoading: false,
            isError: false);
      }));
    });

    on<_Women>((event, emit) async {
      emit(state.copyWith(isLoading: true, products: [], isError: false));
      final productData = await _productFacade.getProducts();
      emit(productData.fold(
          (l) => state.copyWith(isLoading: false, isError: true),
          (r) => state.copyWith(
              products: r
                  .where((element) =>
                      element.category == 'Women' ||
                      element.category == 'Unisex')
                  .toList(),
              isLoading: false)));
    });

    on<_Kids>((event, emit) async {
      emit(state.copyWith(isLoading: true, products: [], isError: false));
      final productData = await _productFacade.getProducts();
      emit(productData.fold(
          (l) => state.copyWith(isLoading: false, isError: true),
          (r) => state.copyWith(
              products:
                  r.where((element) => element.category == 'Kids').toList(),
              isLoading: false,
              isError: false)));
    });
    on<_UniSex>((event, emit) async {
      final productData = await _productFacade.getProducts();
      emit(state.copyWith(isLoading: true, products: [], isError: false));
      emit(productData.fold(
          (l) => state.copyWith(isLoading: false, isError: true),
          (r) => state.copyWith(
              products:
                  r.where((element) => element.category == 'Unisex').toList(),
              isLoading: false)));
    });
  }
}
