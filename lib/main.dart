import 'package:ecommerce/application/checkData/check_data_cubit.dart';
import 'package:ecommerce/application/payment/payment_cubit.dart';
import 'package:ecommerce/application/ventor/ventor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/injection.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/main_screen.dart';
import 'package:ecommerce/presentation/views/auth/phone_auth.dart';
import 'package:ecommerce/presentation/views/auth/sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'application/cart/cart_bloc.dart';
import 'application/product/product_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider<CartBloc>(
          create: (context) =>
              getIt<CartBloc>()..add(const CartEvent.getCart(option: 'cart')),
        ),
        BlocProvider<VentorBloc>(
          create: (context) => getIt<VentorBloc>(),
        ),
        BlocProvider<CheckDataCubit>(
          create: (context) => getIt<CheckDataCubit>(),
        ),
        BlocProvider<PaymentCubit>(
          create: (context) => getIt<PaymentCubit>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: AppColor.black,
            ),
            titleLarge: TextStyle(fontWeight: FontWeight.normal),
          ),
          fontFamily: 'Montserrat',
        ),
        home: MainScreen(),
      ),
    );
  }
}
