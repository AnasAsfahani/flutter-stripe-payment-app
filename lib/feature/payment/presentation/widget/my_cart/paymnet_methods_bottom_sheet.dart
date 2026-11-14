import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../payment_details/payment_methods_list_view.dart';
import 'custom_bloc_consumer_button.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20),
          PaymentMethodsListView(),
          SizedBox(height: 20),
          CustomBlocConsumerButton(),
        ],
      ),
    );
  }
}
