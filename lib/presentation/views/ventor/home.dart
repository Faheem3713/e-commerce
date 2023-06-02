import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/ventor/ventor_bloc.dart';
import 'widgets/ventor_drawer.dart';

class VentorHome extends StatelessWidget {
  const VentorHome({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.sendPasswordResetEmail(
        email: FirebaseAuth.instance.currentUser!.email!);
    return Scaffold(
      drawer: const VentorDrawer(),
      body: BlocBuilder<VentorBloc, VentorState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : CustomScrollView(
                  slivers: [
                    const SliverAppBar(
                      backgroundColor: AppColor.primaryColor,
                      title: Text(
                        'Products',
                        style: TextStyle(color: AppColor.white, fontSize: 20),
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                      childCount: state.products.length,
                      (context, index) {
                        final ventorData = state.products[index];
                        return ListTile(
                          subtitle: Text('${ventorData.price}'),
                          trailing: Text('Qty: ${ventorData.quantity}'),
                          leading: Image.network(ventorData.image[0]),
                          onLongPress: () {
                            context
                                .read<VentorBloc>()
                                .add(VentorEvent.deleteProduct(ventorData.id));
                          },
                          title: Text(ventorData.name),
                        );
                      },
                    ))
                  ],
                );
        },
      ),
    );
  }
}
