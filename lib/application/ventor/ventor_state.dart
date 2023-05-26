part of 'ventor_bloc.dart';

@freezed
class VentorState with _$VentorState {
  const factory VentorState(
      {required bool isLoading,
      required bool isError,
      required List<Coupon> coupon}) = _VentorState;
  factory VentorState.initial() =>
      const VentorState(isLoading: false, isError: false, coupon: []);
}
