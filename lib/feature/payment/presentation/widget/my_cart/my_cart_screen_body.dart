import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/feature/payment/data/repo/paymnet_repo_impl.dart';
import 'package:payment_app/feature/payment/presentation/cubit/stripe_cubit.dart';
import 'package:payment_app/feature/payment/presentation/widget/my_cart/paymnet_methods_bottom_sheet.dart';
import 'package:payment_app/feature/payment/presentation/widget/my_cart/total_price.dart';
import '../../../../../core/utils/widget/custom_button.dart';
import '/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'order_row_info.dart';

class MyCartScreenBody extends StatelessWidget {
  const MyCartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        children: [
          Image.asset(Assets.cart),
          SizedBox(height: 30),

          OrderRowInfo(title: "Order Subtotal", value: r"42.97$"),
          OrderRowInfo(title: "Discount", value: r"0$"),
          OrderRowInfo(title: "Shipping", value: r"8$"),

          const Divider(
            color: Color(0xffC7C7C7),
            thickness: 1,
            height: 20,
            indent: 10,
            endIndent: 10,
          ),

          TotalPrice(value: r"50$.97"),
          Spacer(),
          CustomButton(
            title: "Complete Payment",
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return PaymentDetailsScreen();
              //     },
              //   ),
              // );
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => StripeCubit(PaymentRepoImpl()),
                    child: PaymentMethodsBottomSheet(),
                  );
                },
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
