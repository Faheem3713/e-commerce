import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/repository/i_coupon_facade.dart';
import 'package:ecommerce/infrastructure/repository/firebase_add.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/models/coupon_model.dart';

part 'ventor_event.dart';
part 'ventor_state.dart';
part 'ventor_bloc.freezed.dart';

@injectable
class VentorBloc extends Bloc<VentorEvent, VentorState> {
  final ICouponFacade couponFacade;
  VentorBloc(this.couponFacade) : super(VentorState.initial()) {
    on<_AddCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await couponFacade.addCoupon(
          couponCode: event.couponCode, percentage: event.percent);
      await couponFacade.getCoupon().then((value) => emit(value.fold(
          (l) => state.copyWith(isLoading: false, isError: true, coupon: []),
          (r) => state.copyWith(isLoading: false, isError: false, coupon: r))));
    });

    on<_GetCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await couponFacade.getCoupon().then((value) => emit(value.fold(
          (l) => state.copyWith(isLoading: false, isError: true, coupon: []),
          (r) => state.copyWith(isLoading: false, isError: false, coupon: r))));
    });
  }
}
