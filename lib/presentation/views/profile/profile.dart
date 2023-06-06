import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/payment/payment_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PaymentCubit>().getProfiele();
    });
    return Scaffold(
      body: Center(
        child: BlocBuilder<PaymentCubit, PaymentState>(
          builder: (context, state) {
            return state.isLoading
                ? const CircularProgressIndicator()
                : Column(
                    children: [
                      AppConstants.height20,
                      const CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        state.user?.name ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AppConstants.height10,
                      Text(
                        state.user?.email ?? '',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Address:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        state.user?.address ?? '',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Phone:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        state.user?.phoneNo ?? '',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
