import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/payment/payment_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                        state.user?.address ?? '',
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
                      const Text(
                        '123 Main St, New York, NY 10001',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Phone:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '+1 (123) 456-7890',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
