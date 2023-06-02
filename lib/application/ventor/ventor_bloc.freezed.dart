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
    required TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)
        addProduct,
    required TResult Function() getProducts,
    required TResult Function(String id) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
    TResult? Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult? Function()? getProducts,
    TResult? Function(String id)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult Function()? getProducts,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProducts value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProducts value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProducts value)? deleteProduct,
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
    required TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)
        addProduct,
    required TResult Function() getProducts,
    required TResult Function(String id) deleteProduct,
  }) {
    return addCoupon(couponCode, percent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
    TResult? Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult? Function()? getProducts,
    TResult? Function(String id)? deleteProduct,
  }) {
    return addCoupon?.call(couponCode, percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult Function()? getProducts,
    TResult Function(String id)? deleteProduct,
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
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProducts value) deleteProduct,
  }) {
    return addCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProducts value)? deleteProduct,
  }) {
    return addCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProducts value)? deleteProduct,
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
    required TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)
        addProduct,
    required TResult Function() getProducts,
    required TResult Function(String id) deleteProduct,
  }) {
    return getCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
    TResult? Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult? Function()? getProducts,
    TResult? Function(String id)? deleteProduct,
  }) {
    return getCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult Function()? getProducts,
    TResult Function(String id)? deleteProduct,
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
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProducts value) deleteProduct,
  }) {
    return getCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProducts value)? deleteProduct,
  }) {
    return getCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProducts value)? deleteProduct,
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
abstract class _$$_AddProductCopyWith<$Res> {
  factory _$$_AddProductCopyWith(
          _$_AddProduct value, $Res Function(_$_AddProduct) then) =
      __$$_AddProductCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String productName,
      int price,
      String category,
      int discount,
      String brand,
      String description,
      List<File> image,
      int quantity,
      List<int> size});
}

/// @nodoc
class __$$_AddProductCopyWithImpl<$Res>
    extends _$VentorEventCopyWithImpl<$Res, _$_AddProduct>
    implements _$$_AddProductCopyWith<$Res> {
  __$$_AddProductCopyWithImpl(
      _$_AddProduct _value, $Res Function(_$_AddProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? price = null,
    Object? category = null,
    Object? discount = null,
    Object? brand = null,
    Object? description = null,
    Object? image = null,
    Object? quantity = null,
    Object? size = null,
  }) {
    return _then(_$_AddProduct(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<File>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_AddProduct with DiagnosticableTreeMixin implements _AddProduct {
  const _$_AddProduct(
      {required this.productName,
      required this.price,
      required this.category,
      required this.discount,
      required this.brand,
      required this.description,
      required final List<File> image,
      required this.quantity,
      required final List<int> size})
      : _image = image,
        _size = size;

  @override
  final String productName;
  @override
  final int price;
  @override
  final String category;
  @override
  final int discount;
  @override
  final String brand;
  @override
  final String description;
  final List<File> _image;
  @override
  List<File> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  final int quantity;
  final List<int> _size;
  @override
  List<int> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorEvent.addProduct(productName: $productName, price: $price, category: $category, discount: $discount, brand: $brand, description: $description, image: $image, quantity: $quantity, size: $size)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VentorEvent.addProduct'))
      ..add(DiagnosticsProperty('productName', productName))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProduct &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._size, _size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productName,
      price,
      category,
      discount,
      brand,
      description,
      const DeepCollectionEquality().hash(_image),
      quantity,
      const DeepCollectionEquality().hash(_size));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      __$$_AddProductCopyWithImpl<_$_AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String couponCode, int percent) addCoupon,
    required TResult Function() getCoupon,
    required TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)
        addProduct,
    required TResult Function() getProducts,
    required TResult Function(String id) deleteProduct,
  }) {
    return addProduct(productName, price, category, discount, brand,
        description, image, quantity, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
    TResult? Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult? Function()? getProducts,
    TResult? Function(String id)? deleteProduct,
  }) {
    return addProduct?.call(productName, price, category, discount, brand,
        description, image, quantity, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult Function()? getProducts,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(productName, price, category, discount, brand,
          description, image, quantity, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProducts value) deleteProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProducts value)? deleteProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProducts value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements VentorEvent {
  const factory _AddProduct(
      {required final String productName,
      required final int price,
      required final String category,
      required final int discount,
      required final String brand,
      required final String description,
      required final List<File> image,
      required final int quantity,
      required final List<int> size}) = _$_AddProduct;

  String get productName;
  int get price;
  String get category;
  int get discount;
  String get brand;
  String get description;
  List<File> get image;
  int get quantity;
  List<int> get size;
  @JsonKey(ignore: true)
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProductsCopyWith<$Res> {
  factory _$$_GetProductsCopyWith(
          _$_GetProducts value, $Res Function(_$_GetProducts) then) =
      __$$_GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProductsCopyWithImpl<$Res>
    extends _$VentorEventCopyWithImpl<$Res, _$_GetProducts>
    implements _$$_GetProductsCopyWith<$Res> {
  __$$_GetProductsCopyWithImpl(
      _$_GetProducts _value, $Res Function(_$_GetProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProducts with DiagnosticableTreeMixin implements _GetProducts {
  const _$_GetProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorEvent.getProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'VentorEvent.getProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String couponCode, int percent) addCoupon,
    required TResult Function() getCoupon,
    required TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)
        addProduct,
    required TResult Function() getProducts,
    required TResult Function(String id) deleteProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
    TResult? Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult? Function()? getProducts,
    TResult? Function(String id)? deleteProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult Function()? getProducts,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProducts value) deleteProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProducts value)? deleteProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProducts value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements VentorEvent {
  const factory _GetProducts() = _$_GetProducts;
}

/// @nodoc
abstract class _$$_DeleteProductsCopyWith<$Res> {
  factory _$$_DeleteProductsCopyWith(
          _$_DeleteProducts value, $Res Function(_$_DeleteProducts) then) =
      __$$_DeleteProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteProductsCopyWithImpl<$Res>
    extends _$VentorEventCopyWithImpl<$Res, _$_DeleteProducts>
    implements _$$_DeleteProductsCopyWith<$Res> {
  __$$_DeleteProductsCopyWithImpl(
      _$_DeleteProducts _value, $Res Function(_$_DeleteProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteProducts(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteProducts
    with DiagnosticableTreeMixin
    implements _DeleteProducts {
  const _$_DeleteProducts(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorEvent.deleteProduct(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VentorEvent.deleteProduct'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProducts &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProductsCopyWith<_$_DeleteProducts> get copyWith =>
      __$$_DeleteProductsCopyWithImpl<_$_DeleteProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String couponCode, int percent) addCoupon,
    required TResult Function() getCoupon,
    required TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)
        addProduct,
    required TResult Function() getProducts,
    required TResult Function(String id) deleteProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String couponCode, int percent)? addCoupon,
    TResult? Function()? getCoupon,
    TResult? Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult? Function()? getProducts,
    TResult? Function(String id)? deleteProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String couponCode, int percent)? addCoupon,
    TResult Function()? getCoupon,
    TResult Function(
            String productName,
            int price,
            String category,
            int discount,
            String brand,
            String description,
            List<File> image,
            int quantity,
            List<int> size)?
        addProduct,
    TResult Function()? getProducts,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProducts value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProducts value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProducts value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProducts implements VentorEvent {
  const factory _DeleteProducts(final String id) = _$_DeleteProducts;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteProductsCopyWith<_$_DeleteProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VentorState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Products> get products => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Option<Either<MainFailure, Unit>> get successOrError =>
      throw _privateConstructorUsedError;
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
  $Res call(
      {bool isLoading,
      List<Products> products,
      bool isError,
      Option<Either<MainFailure, Unit>> successOrError,
      List<Coupon> coupon});
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
    Object? products = null,
    Object? isError = null,
    Object? successOrError = null,
    Object? coupon = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrError: null == successOrError
          ? _value.successOrError
          : successOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Unit>>,
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
  $Res call(
      {bool isLoading,
      List<Products> products,
      bool isError,
      Option<Either<MainFailure, Unit>> successOrError,
      List<Coupon> coupon});
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
    Object? products = null,
    Object? isError = null,
    Object? successOrError = null,
    Object? coupon = null,
  }) {
    return _then(_$_VentorState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrError: null == successOrError
          ? _value.successOrError
          : successOrError // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Unit>>,
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
      required final List<Products> products,
      required this.isError,
      required this.successOrError,
      required final List<Coupon> coupon})
      : _products = products,
        _coupon = coupon;

  @override
  final bool isLoading;
  final List<Products> _products;
  @override
  List<Products> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool isError;
  @override
  final Option<Either<MainFailure, Unit>> successOrError;
  final List<Coupon> _coupon;
  @override
  List<Coupon> get coupon {
    if (_coupon is EqualUnmodifiableListView) return _coupon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupon);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VentorState(isLoading: $isLoading, products: $products, isError: $isError, successOrError: $successOrError, coupon: $coupon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VentorState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('successOrError', successOrError))
      ..add(DiagnosticsProperty('coupon', coupon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VentorState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.successOrError, successOrError) ||
                other.successOrError == successOrError) &&
            const DeepCollectionEquality().equals(other._coupon, _coupon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_products),
      isError,
      successOrError,
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
      required final List<Products> products,
      required final bool isError,
      required final Option<Either<MainFailure, Unit>> successOrError,
      required final List<Coupon> coupon}) = _$_VentorState;

  @override
  bool get isLoading;
  @override
  List<Products> get products;
  @override
  bool get isError;
  @override
  Option<Either<MainFailure, Unit>> get successOrError;
  @override
  List<Coupon> get coupon;
  @override
  @JsonKey(ignore: true)
  _$$_VentorStateCopyWith<_$_VentorState> get copyWith =>
      throw _privateConstructorUsedError;
}
