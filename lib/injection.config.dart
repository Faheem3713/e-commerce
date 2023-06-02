// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecommerce/application/auth/auth_bloc.dart' as _i16;
import 'package:ecommerce/application/cart/cart_bloc.dart' as _i26;
import 'package:ecommerce/application/checkData/check_data_cubit.dart' as _i17;
import 'package:ecommerce/application/payment/payment_cubit.dart' as _i24;
import 'package:ecommerce/application/product/product_bloc.dart' as _i15;
import 'package:ecommerce/application/ventor/ventor_bloc.dart' as _i25;
import 'package:ecommerce/domain/auth/i_add_product.dart' as _i18;
import 'package:ecommerce/domain/auth/i_auth_facade.dart' as _i7;
import 'package:ecommerce/domain/repository/i_cart_facade.dart' as _i20;
import 'package:ecommerce/domain/repository/i_coupon_facade.dart' as _i9;
import 'package:ecommerce/domain/repository/I_order_facade.dart' as _i22;
import 'package:ecommerce/domain/repository/phone_auth_facade.dart' as _i11;
import 'package:ecommerce/domain/repository/product_facade.dart' as _i13;
import 'package:ecommerce/infrastructure/core/injectable_module.dart' as _i27;
import 'package:ecommerce/infrastructure/repository/auth_repository.dart'
    as _i8;
import 'package:ecommerce/infrastructure/repository/cart_repo.dart' as _i21;
import 'package:ecommerce/infrastructure/repository/coupon_repository.dart'
    as _i10;
import 'package:ecommerce/infrastructure/repository/firebase_add.dart' as _i19;
import 'package:ecommerce/infrastructure/repository/order_repository.dart'
    as _i23;
import 'package:ecommerce/infrastructure/repository/phone_auth.dart' as _i12;
import 'package:ecommerce/infrastructure/repository/product_repo.dart' as _i14;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_database/firebase_database.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i3.DatabaseReference>(
        () => injectableModule.firebaseDatabase);
    gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseStorage>(
        () => injectableModule.firebaseStorage);
    gh.lazySingleton<_i6.GoogleSignIn>(() => injectableModule.googleSignIn);
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.AuthRepository(
          gh<_i4.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
          gh<_i3.DatabaseReference>(),
        ));
    gh.lazySingleton<_i9.ICouponFacade>(
        () => _i10.CouponRepository(gh<_i3.DatabaseReference>()));
    gh.lazySingleton<_i11.IPhoneAuthFacade>(
        () => _i12.PhoneAuthRepository(gh<_i4.FirebaseAuth>()));
    gh.lazySingleton<_i13.IProductFacade>(
        () => _i14.ProductRepository(gh<_i3.DatabaseReference>()));
    gh.factory<_i15.ProductBloc>(
        () => _i15.ProductBloc(gh<_i13.IProductFacade>()));
    gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(
          gh<_i7.IAuthFacade>(),
          gh<_i11.IPhoneAuthFacade>(),
        ));
    gh.factory<_i17.CheckDataCubit>(
        () => _i17.CheckDataCubit(gh<_i9.ICouponFacade>()));
    gh.lazySingleton<_i18.IAddProductFacade>(() => _i19.AdminManage(
          gh<_i3.DatabaseReference>(),
          gh<_i5.FirebaseStorage>(),
          gh<_i13.IProductFacade>(),
        ));
    gh.lazySingleton<_i20.ICartFacade>(() => _i21.CartRepository(
          gh<_i4.FirebaseAuth>(),
          gh<_i3.DatabaseReference>(),
          gh<_i13.IProductFacade>(),
        ));
    gh.lazySingleton<_i22.IOrderFacade>(() => _i23.OrderRepository(
          gh<_i4.FirebaseAuth>(),
          gh<_i3.DatabaseReference>(),
          gh<_i13.IProductFacade>(),
        ));
    gh.factory<_i24.PaymentCubit>(() => _i24.PaymentCubit(
          gh<_i22.IOrderFacade>(),
          gh<_i9.ICouponFacade>(),
        ));
    gh.factory<_i25.VentorBloc>(() => _i25.VentorBloc(
          gh<_i9.ICouponFacade>(),
          gh<_i18.IAddProductFacade>(),
        ));
    gh.factory<_i26.CartBloc>(() => _i26.CartBloc(
          gh<_i20.ICartFacade>(),
          gh<_i22.IOrderFacade>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i27.InjectableModule {}
