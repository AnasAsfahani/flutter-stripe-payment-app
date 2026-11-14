import 'package:flutter/material.dart';
import 'package:payment_app/feature/payment/presentation/widget/payment_details/paymet_methods_card.dart';

import '../../../../../core/utils/assets.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> images = [Assets.svgMasterCard, Assets.svgPayPal];

    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return PaymentMethodsCard(
            image: images[index],
            isActive: activeIndex == index,
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
