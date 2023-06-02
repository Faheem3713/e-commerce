part of 'ventor_bloc.dart';

@freezed
class VentorState with _$VentorState {
  const factory VentorState(
      {required bool isLoading,
      required List<Products> products,
      required bool isError,
      required Option<Either<MainFailure, Unit>> successOrError,
      required List<Coupon> coupon}) = _VentorState;
  factory VentorState.initial() => VentorState(
      successOrError: none(),
      isLoading: false,
      isError: false,
      coupon: [],
      products: []);
}
