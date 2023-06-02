import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/auth/auth_bloc.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/ventor/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/textfield.dart';

class VentorRegistration extends StatelessWidget {
  VentorRegistration({super.key});
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: context.watch<AuthBloc>().state.autoValidate,
        key: _key,
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.showErrorMessage
                ? ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Invalid registration')))
                : const SizedBox();
            state.authFailureOrSuccess.fold(
                () => null,
                (a) => a.fold(
                    (l) => null,
                    (r) => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VentorHome(),
                        ),
                        (route) => false)));
          },
          child: Padding(
            padding: AppConstants.padding14,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppConstants.height50,
                  Image.asset("assets/images/ezgif 2.png"),
                  AppConstants.height50,
                  Column(
                    children: [
                      CustomTextField(
                          controller: _nameController,
                          placeholderText: 'Name',
                          prefixIcon: Icons.person),
                      AppConstants.height20,
                      CustomTextField(
                        onChanged: (value) {
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEvent.emailChanged(value));
                        },
                        validator: (value) {
                          return context
                              .read<AuthBloc>()
                              .state
                              .email
                              .value
                              .fold(
                                  (l) => l.maybeMap(
                                        invalidEmail: (_) => 'Invalid Email',
                                        orElse: () {
                                          return null;
                                        },
                                      ),
                                  (_) => null);
                        },
                        controller: _emailController,
                        placeholderText: 'Email',
                        prefixIcon: Icons.email_outlined,
                        keyBoardType: TextInputType.emailAddress,
                      ),
                      AppConstants.height20,
                      CustomTextField(
                          onChanged: (value) {
                            BlocProvider.of<AuthBloc>(context)
                                .add(AuthEvent.passwordChanged(value));
                          },
                          validator: (value) {
                            return context
                                .read<AuthBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                    (l) => l.maybeMap(
                                          invalidPassword: (_) =>
                                              'Invalid password',
                                          orElse: () {
                                            return null;
                                          },
                                        ),
                                    (_) => null);
                          },
                          keyBoardType: TextInputType.phone,
                          controller: _passwordController,
                          placeholderText: 'Password',
                          prefixIcon: Icons.lock)
                    ],
                  ),
                  AppConstants.height10,
                  ButtonWidget(
                    width: 140,
                    text: 'SIGN UP',
                    onPressed: () {
                      sighInInfo(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  sighInInfo(BuildContext context) async {
    if (_key.currentState!.validate() && _nameController.text.isNotEmpty) {
      context.read<AuthBloc>().add(AuthEvent.register(
          email: _emailController.text, password: _passwordController.text));
    }
  }
}
