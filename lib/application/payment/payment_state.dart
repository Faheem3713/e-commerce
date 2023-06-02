part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState(
      {required Option<bool> isErrorOrSuccess,
      required bool isLoading,
      UserModel? user,
      required List<CartItem> orders}) = _Initial;
  factory PaymentState.initial() => PaymentState(
      isErrorOrSuccess: none(), orders: [], isLoading: false, user: null);
}
