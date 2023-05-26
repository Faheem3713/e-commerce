import 'package:ecommerce/application/auth/auth_bloc.dart';
import 'package:ecommerce/domain/auth/i_auth_facade.dart';
import 'package:ecommerce/domain/repository/phone_auth_facade.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/button_widget.dart';
import '../widgets/textfield.dart';

class PhoneAuth extends StatelessWidget {
  PhoneAuth({Key? key}) : super(key: key);
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.padding14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppConstants.height50,
            Center(child: Image.asset("assets/images/ezgif 2.png")),
            const Spacer(),
            const Text(
              'Phone Number',
              style: TextStyle(fontWeight: FontWeight.w900, height: 3),
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.isLoading
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Generating OTP')))
                    : null;
                //  state.authFailureOrSuccess.fold(() => null, (a) => null);
              },
              builder: (context, state) {
                return Form(
                  autovalidateMode: state.autoValidate,
                  child: CustomTextField(
                    keyBoardType: TextInputType.phone,
                    validator: (val) {
                      return context.read<AuthBloc>().state.phone.value.fold(
                          (l) => l.maybeMap(
                                invalidPhone: (_) => 'Invalid phone',
                                orElse: () {},
                              ),
                          (_) => null);
                    },
                    onChanged: (value) => context
                        .read<AuthBloc>()
                        .add(AuthEvent.phoneChanged(value)),
                    controller: _phoneController,
                    placeholderText: 'Enter your phone number',
                    prefixIcon: Icons.person,
                  ),
                );
              },
            ),
            AppConstants.height10,
            AppConstants.height10,
            Center(
              child: ButtonWidget(
                width: 140,
                onPressed: () async {
                  context.read<AuthBloc>().add(AuthEvent.phoneAuth(
                      phoneNumber: _phoneController.text, context: context));
                },
                text: 'SUBMIT',
              ),
            ),
            AppConstants.height50
          ],
        ),
      ),
    );
  }
}
