// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ventor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VentorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String couponCode, int percent) addCoupon,
    required TResult Function() getCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VentorEventCopyWith<$Res> {
  factory $VentorEventCopyWith(
          VentorEvent value, $Res Function(VentorEvent) then) =
      _$VentorEventCopyWithImpl<$Res, VentorEvent>;
}

/// @nodoc
class _$VentorEventCopyWithImpl<$Res, $Val extends VentorEvent>
    implements $VentorEventCopyWith<$Res> {
  _$VentorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddCouponCopyWith<$Res> {
  factory _$$_AddCouponCopyWith(
          _$_AddCoupon value, $Res Function(_$_AddCoupon) then) =
      __$$_AddCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({String couponCode, int percent});
}

/// @nodoc
class __$$_AddCouponCopyWithImpl<$Res>
    extends _$VentorEventCopyWithImpl<$Res, _$_AddCoupon>
    implements _$$_AddCouponCopyWith<$Res> {
  __$$_AddCouponCopyWithImpl(
      _$_AddCoupon _value, $Res Function(_$_AddCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? percent = null,
  }) {
    return _then(_$_AddCoupon(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddCoupon with DiagnosticableTreeMixin implements _AddCoupon {
  const _$_AddCoupon({required this.couponCode, required this.percent});

  @override
  final String couponCode;
  @override
  final int percent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorEvent.addCoupon(couponCode: $couponCode, percent: $percent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VentorEvent.addCoupon'))
      ..add(DiagnosticsProperty('couponCode', couponCode))
      ..add(DiagnosticsProperty('percent', percent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCoupon &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponCode, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCouponCopyWith<_$_AddCoupon> get copyWith =>
      __$$_AddCouponCopyWithImpl<_$_AddCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String couponCode, int percent) addCoupon,
    required TResult Function() getCoupon,
  }) {
    return addCoupon(couponCode, percent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
  }) {
    return addCoupon?.call(couponCode, percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    required TResult orElse(),
  }) {
    if (addCoupon != null) {
      return addCoupon(couponCode, percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
  }) {
    return addCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
  }) {
    return addCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    required TResult orElse(),
  }) {
    if (addCoupon != null) {
      return addCoupon(this);
    }
    return orElse();
  }
}

abstract class _AddCoupon implements VentorEvent {
  const factory _AddCoupon(
      {required final String couponCode,
      required final int percent}) = _$_AddCoupon;

  String get couponCode;
  int get percent;
  @JsonKey(ignore: true)
  _$$_AddCouponCopyWith<_$_AddCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCouponCopyWith<$Res> {
  factory _$$_GetCouponCopyWith(
          _$_GetCoupon value, $Res Function(_$_GetCoupon) then) =
      __$$_GetCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCouponCopyWithImpl<$Res>
    extends _$VentorEventCopyWithImpl<$Res, _$_GetCoupon>
    implements _$$_GetCouponCopyWith<$Res> {
  __$$_GetCouponCopyWithImpl(
      _$_GetCoupon _value, $Res Function(_$_GetCoupon) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCoupon with DiagnosticableTreeMixin implements _GetCoupon {
  const _$_GetCoupon();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorEvent.getCoupon()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'VentorEvent.getCoupon'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String couponCode, int percent) addCoupon,
    required TResult Function() getCoupon,
  }) {
    return getCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
  }) {
    return getCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    required TResult orElse(),
  }) {
    if (getCoupon != null) {
      return getCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
  }) {
    return getCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
  }) {
    return getCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    required TResult orElse(),
  }) {
    if (getCoupon != null) {
      return getCoupon(this);
    }
    return orElse();
  }
}

abstract class _GetCoupon implements VentorEvent {
  const factory _GetCoupon() = _$_GetCoupon;
}

/// @nodoc
mixin _$VentorState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Coupon> get coupon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VentorStateCopyWith<VentorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VentorStateCopyWith<$Res> {
  factory $VentorStateCopyWith(
          VentorState value, $Res Function(VentorState) then) =
      _$VentorStateCopyWithImpl<$Res, VentorState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<Coupon> coupon});
}

/// @nodoc
class _$VentorStateCopyWithImpl<$Res, $Val extends VentorState>
    implements $VentorStateCopyWith<$Res> {
  _$VentorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? coupon = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VentorStateCopyWith<$Res>
    implements $VentorStateCopyWith<$Res> {
  factory _$$_VentorStateCopyWith(
          _$_VentorState value, $Res Function(_$_VentorState) then) =
      __$$_VentorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<Coupon> coupon});
}

/// @nodoc
class __$$_VentorStateCopyWithImpl<$Res>
    extends _$VentorStateCopyWithImpl<$Res, _$_VentorState>
    implements _$$_VentorStateCopyWith<$Res> {
  __$$_VentorStateCopyWithImpl(
      _$_VentorState _value, $Res Function(_$_VentorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? coupon = null,
  }) {
    return _then(_$_VentorState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: null == coupon
          ? _value._coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
    ));
  }
}

/// @nodoc

class _$_VentorState with DiagnosticableTreeMixin implements _VentorState {
  const _$_VentorState(
      {required this.isLoading,
      required this.isError,
      required final List<Coupon> coupon})
      : _coupon = coupon;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Coupon> _coupon;
  @override
  List<Coupon> get coupon {
    if (_coupon is EqualUnmodifiableListView) return _coupon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupon);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorState(isLoading: $isLoading, isError: $isError, coupon: $coupon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VentorState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('coupon', coupon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VentorState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._coupon, _coupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_coupon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VentorStateCopyWith<_$_VentorState> get copyWith =>
      __$$_VentorStateCopyWithImpl<_$_VentorState>(this, _$identity);
}

abstract class _VentorState implements VentorState {
  const factory _VentorState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Coupon> coupon}) = _$_VentorState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Coupon> get coupon;
  @override
  @JsonKey(ignore: true)
  _$$_VentorStateCopyWith<_$_VentorState> get copyWith =>
      throw _privateConstructorUsedError;
}
