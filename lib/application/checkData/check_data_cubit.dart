import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/i_coupon_facade.dart';

part 'check_data_state.dart';
part 'check_data_cubit.freezed.dart';

@injectable
class CheckDataCubit extends Cubit<CheckDataState> {
  final ICouponFacade couponFacade;
  CheckDataCubit(this.couponFacade) : super(CheckDataState.initial());

  Future<void> checkIsValid(String couponCode) async {
    final result = await couponFacade.checkCoupon(couponCode, false);

    emit(state.copyWith(offer: result));
  }

  void clearTotal() => emit(state.copyWith(subtotal: 0));

  void findTotal(int value, bool isAdd) => emit(state.copyWith(
      subtotal: isAdd ? state.subtotal + value : state.subtotal - value));
}
