// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({Products product, String option});
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddToCart>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? option = null,
  }) {
    return _then(_$_AddToCart(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Products,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({required this.product, required this.option});

  @override
  final Products product;
  @override
  final String option;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) {
    return addToCart(product, option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) {
    return addToCart?.call(product, option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(
      {required final Products product,
      required final String option}) = _$_AddToCart;

  Products get product;
  String get option;
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCartCopyWith<$Res> {
  factory _$$_GetCartCopyWith(
          _$_GetCart value, $Res Function(_$_GetCart) then) =
      __$$_GetCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String option});
}

/// @nodoc
class __$$_GetCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_GetCart>
    implements _$$_GetCartCopyWith<$Res> {
  __$$_GetCartCopyWithImpl(_$_GetCart _value, $Res Function(_$_GetCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
  }) {
    return _then(_$_GetCart(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCart implements _GetCart {
  const _$_GetCart({required this.option});

  @override
  final String option;

  @override
  String toString() {
    return 'CartEvent.getCart(option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCart &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCartCopyWith<_$_GetCart> get copyWith =>
      __$$_GetCartCopyWithImpl<_$_GetCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) {
    return getCart(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) {
    return getCart?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCart implements CartEvent {
  const factory _GetCart({required final String option}) = _$_GetCart;

  String get option;
  @JsonKey(ignore: true)
  _$$_GetCartCopyWith<_$_GetCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCartCopyWith<$Res> {
  factory _$$_RemoveCartCopyWith(
          _$_RemoveCart value, $Res Function(_$_RemoveCart) then) =
      __$$_RemoveCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String option, String id});
}

/// @nodoc
class __$$_RemoveCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemoveCart>
    implements _$$_RemoveCartCopyWith<$Res> {
  __$$_RemoveCartCopyWithImpl(
      _$_RemoveCart _value, $Res Function(_$_RemoveCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? id = null,
  }) {
    return _then(_$_RemoveCart(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveCart implements _RemoveCart {
  const _$_RemoveCart({required this.option, required this.id});

  @override
  final String option;
  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.removeCart(option: $option, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveCart &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveCartCopyWith<_$_RemoveCart> get copyWith =>
      __$$_RemoveCartCopyWithImpl<_$_RemoveCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) {
    return removeCart(option, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) {
    return removeCart?.call(option, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(option, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) {
    return removeCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) {
    return removeCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveCart implements CartEvent {
  const factory _RemoveCart(
      {required final String option, required final String id}) = _$_RemoveCart;

  String get option;
  String get id;
  @JsonKey(ignore: true)
  _$$_RemoveCartCopyWith<_$_RemoveCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetWishListCopyWith<$Res> {
  factory _$$_GetWishListCopyWith(
          _$_GetWishList value, $Res Function(_$_GetWishList) then) =
      __$$_GetWishListCopyWithImpl<$Res>;
  @useResult
  $Res call({String option});
}

/// @nodoc
class __$$_GetWishListCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_GetWishList>
    implements _$$_GetWishListCopyWith<$Res> {
  __$$_GetWishListCopyWithImpl(
      _$_GetWishList _value, $Res Function(_$_GetWishList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
  }) {
    return _then(_$_GetWishList(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetWishList implements _GetWishList {
  const _$_GetWishList({required this.option});

  @override
  final String option;

  @override
  String toString() {
    return 'CartEvent.getWishList(option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWishList &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetWishListCopyWith<_$_GetWishList> get copyWith =>
      __$$_GetWishListCopyWithImpl<_$_GetWishList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) {
    return getWishList(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) {
    return getWishList?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) {
    return getWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) {
    return getWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList(this);
    }
    return orElse();
  }
}

abstract class _GetWishList implements CartEvent {
  const factory _GetWishList({required final String option}) = _$_GetWishList;

  String get option;
  @JsonKey(ignore: true)
  _$$_GetWishListCopyWith<_$_GetWishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelOrderCopyWith<$Res> {
  factory _$$_CancelOrderCopyWith(
          _$_CancelOrder value, $Res Function(_$_CancelOrder) then) =
      __$$_CancelOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_CancelOrderCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CancelOrder>
    implements _$$_CancelOrderCopyWith<$Res> {
  __$$_CancelOrderCopyWithImpl(
      _$_CancelOrder _value, $Res Function(_$_CancelOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CancelOrder(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CancelOrder implements _CancelOrder {
  const _$_CancelOrder(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.cancelOrder(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelOrder &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelOrderCopyWith<_$_CancelOrder> get copyWith =>
      __$$_CancelOrderCopyWithImpl<_$_CancelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) {
    return cancelOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) {
    return cancelOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements CartEvent {
  const factory _CancelOrder(final String id) = _$_CancelOrder;

  String get id;
  @JsonKey(ignore: true)
  _$$_CancelOrderCopyWith<_$_CancelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartRemovalCopyWith<$Res> {
  factory _$$_CartRemovalCopyWith(
          _$_CartRemoval value, $Res Function(_$_CartRemoval) then) =
      __$$_CartRemovalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartRemovalCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartRemoval>
    implements _$$_CartRemovalCopyWith<$Res> {
  __$$_CartRemovalCopyWithImpl(
      _$_CartRemoval _value, $Res Function(_$_CartRemoval) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartRemoval implements _CartRemoval {
  const _$_CartRemoval();

  @override
  String toString() {
    return 'CartEvent.cartRemoval()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartRemoval);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products product, String option) addToCart,
    required TResult Function(String option) getCart,
    required TResult Function(String option, String id) removeCart,
    required TResult Function(String option) getWishList,
    required TResult Function(String id) cancelOrder,
    required TResult Function() cartRemoval,
  }) {
    return cartRemoval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products product, String option)? addToCart,
    TResult? Function(String option)? getCart,
    TResult? Function(String option, String id)? removeCart,
    TResult? Function(String option)? getWishList,
    TResult? Function(String id)? cancelOrder,
    TResult? Function()? cartRemoval,
  }) {
    return cartRemoval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products product, String option)? addToCart,
    TResult Function(String option)? getCart,
    TResult Function(String option, String id)? removeCart,
    TResult Function(String option)? getWishList,
    TResult Function(String id)? cancelOrder,
    TResult Function()? cartRemoval,
    required TResult orElse(),
  }) {
    if (cartRemoval != null) {
      return cartRemoval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_CartRemoval value) cartRemoval,
  }) {
    return cartRemoval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_CartRemoval value)? cartRemoval,
  }) {
    return cartRemoval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_CartRemoval value)? cartRemoval,
    required TResult orElse(),
  }) {
    if (cartRemoval != null) {
      return cartRemoval(this);
    }
    return orElse();
  }
}

abstract class _CartRemoval implements CartEvent {
  const factory _CartRemoval() = _$_CartRemoval;
}

/// @nodoc
mixin _$CartState {
  bool get isLoading => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  List<Products> get wishLlist => throw _privateConstructorUsedError;
  List<Products> get data => throw _privateConstructorUsedError;
  Option<Either<MainFailure, Unit>> get isError =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isLoading,
      double subTotal,
      List<Products> wishLlist,
      List<Products> data,
      Option<Either<MainFailure, Unit>> isError});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? subTotal = null,
    Object? wishLlist = null,
    Object? data = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      wishLlist: null == wishLlist
          ? _value.wishLlist
          : wishLlist // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      double subTotal,
      List<Products> wishLlist,
      List<Products> data,
      Option<Either<MainFailure, Unit>> isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? subTotal = null,
    Object? wishLlist = null,
    Object? data = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      wishLlist: null == wishLlist
          ? _value._wishLlist
          : wishLlist // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.subTotal,
      required final List<Products> wishLlist,
      required final List<Products> data,
      required this.isError})
      : _wishLlist = wishLlist,
        _data = data;

  @override
  final bool isLoading;
  @override
  final double subTotal;
  final List<Products> _wishLlist;
  @override
  List<Products> get wishLlist {
    if (_wishLlist is EqualUnmodifiableListView) return _wishLlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishLlist);
  }

  final List<Products> _data;
  @override
  List<Products> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Option<Either<MainFailure, Unit>> isError;

  @override
  String toString() {
    return 'CartState(isLoading: $isLoading, subTotal: $subTotal, wishLlist: $wishLlist, data: $data, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality()
                .equals(other._wishLlist, _wishLlist) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      subTotal,
      const DeepCollectionEquality().hash(_wishLlist),
      const DeepCollectionEquality().hash(_data),
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {required final bool isLoading,
      required final double subTotal,
      required final List<Products> wishLlist,
      required final List<Products> data,
      required final Option<Either<MainFailure, Unit>> isError}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  double get subTotal;
  @override
  List<Products> get wishLlist;
  @override
  List<Products> get data;
  @override
  Option<Either<MainFailure, Unit>> get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
