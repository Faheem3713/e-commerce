part of 'ventor_bloc.dart';

@freezed
class VentorEvent with _$VentorEvent {
  const factory VentorEvent.addCoupon(
      {required String couponCode, required int percent}) = _AddCoupon;
  const factory VentorEvent.getCoupon() = _GetCoupon;
}
