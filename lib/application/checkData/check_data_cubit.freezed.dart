// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckDataState {
  int get offer => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckDataStateCopyWith<CheckDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDataStateCopyWith<$Res> {
  factory $CheckDataStateCopyWith(
          CheckDataState value, $Res Function(CheckDataState) then) =
      _$CheckDataStateCopyWithImpl<$Res, CheckDataState>;
  @useResult
  $Res call({int offer, int subtotal});
}

/// @nodoc
class _$CheckDataStateCopyWithImpl<$Res, $Val extends CheckDataState>
    implements $CheckDataStateCopyWith<$Res> {
  _$CheckDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
    Object? subtotal = null,
  }) {
    return _then(_value.copyWith(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckDataStateCopyWith<$Res>
    implements $CheckDataStateCopyWith<$Res> {
  factory _$$_CheckDataStateCopyWith(
          _$_CheckDataState value, $Res Function(_$_CheckDataState) then) =
      __$$_CheckDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offer, int subtotal});
}

/// @nodoc
class __$$_CheckDataStateCopyWithImpl<$Res>
    extends _$CheckDataStateCopyWithImpl<$Res, _$_CheckDataState>
    implements _$$_CheckDataStateCopyWith<$Res> {
  __$$_CheckDataStateCopyWithImpl(
      _$_CheckDataState _value, $Res Function(_$_CheckDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
    Object? subtotal = null,
  }) {
    return _then(_$_CheckDataState(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CheckDataState implements _CheckDataState {
  const _$_CheckDataState({required this.offer, required this.subtotal});

  @override
  final int offer;
  @override
  final int subtotal;

  @override
  String toString() {
    return 'CheckDataState(offer: $offer, subtotal: $subtotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckDataState &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offer, subtotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckDataStateCopyWith<_$_CheckDataState> get copyWith =>
      __$$_CheckDataStateCopyWithImpl<_$_CheckDataState>(this, _$identity);
}

abstract class _CheckDataState implements CheckDataState {
  const factory _CheckDataState(
      {required final int offer,
      required final int subtotal}) = _$_CheckDataState;

  @override
  int get offer;
  @override
  int get subtotal;
  @override
  @JsonKey(ignore: true)
  _$$_CheckDataStateCopyWith<_$_CheckDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
