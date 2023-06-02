import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/ventor/home.dart';
import 'package:ecommerce/presentation/views/auth/forgot_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../widgets/textfield.dart';
import '../widgets/buttons.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.authFailureOrSuccess.fold(
              () => null,
              (a) => a.fold(
                  (l) => null,
                  (r) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VentorHome(),
                      ))));
        },
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  autovalidateMode: state.showErrorMessage
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  child: Padding(
                    padding: AppConstants.padding14,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppConstants.height50,
                        Image.asset("assets/images/ezgif 2.png"),
                        const Spacer(),
                        Column(
                          children: [
                            CustomTextField(
                                validator: (value) {
                                  return context
                                      .read<AuthBloc>()
                                      .state
                                      .email
                                      .value
                                      .fold(
                                          (l) => l.maybeMap(
                                                invalidEmail: (_) =>
                                                    'Invalid Email',
                                                orElse: () {
                                                  return null;
                                                },
                                              ),
                                          (_) => null);
                                },
                                onChanged: (value) {
                                  BlocProvider.of<AuthBloc>(context)
                                      .add(AuthEvent.emailChanged(value));
                                },
                                controller: _nameController,
                                placeholderText: 'E-mail or phone number',
                                prefixIcon: Icons.person),
                            AppConstants.height20,
                            CustomTextField(
                                obscureText: true,
                                validator: (value) {
                                  return context
                                      .read<AuthBloc>()
                                      .state
                                      .password
                                      .value
                                      .fold(
                                          (l) => l.maybeMap(
                                                invalidPassword: (_) =>
                                                    'Password invalid',
                                                orElse: () {
                                                  return null;
                                                },
                                              ),
                                          (_) => null);
                                },
                                onChanged: (value) {
                                  context
                                      .read<AuthBloc>()
                                      .add(AuthEvent.passwordChanged(value));
                                },
                                controller: _passwordController,
                                placeholderText: 'Password',
                                prefixIcon: Icons.lock),
                          ],
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) => ForgotPassword()));
                                },
                                child: const Text('Forgot Password.?')),
                          ],
                        ),
                        AppConstants.height10,
                        ElevatedButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(AuthEvent.signIn(
                                email: _nameController.text,
                                password: _passwordController.text));
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(140, 46),
                            shape: const RoundedRectangleBorder(),
                            backgroundColor: AppColor.primaryColor,
                          ),
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColor.white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        AppConstants.height10,
                        const AuthTextButton(
                          text: "Don't have an account.?",
                          buttonText: 'SIGN UP',
                        ),
                        AppConstants.height50,
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
