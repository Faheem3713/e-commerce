part of 'check_data_cubit.dart';

@freezed
class CheckDataState with _$CheckDataState {
  const factory CheckDataState({required int offer, required int subtotal}) =
      _CheckDataState;
  factory CheckDataState.initial() =>
      const CheckDataState(offer: 0, subtotal: 0);
}
