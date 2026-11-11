import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/feature/payment/presentation/widget/payment_details/custom_credit_card_widget.dart';
import 'package:payment_app/feature/payment/presentation/widget/payment_details/payment_methods_list_view.dart';
import '../../../../../core/utils/widget/custom_button.dart';
import '../../page/thank_you_screen.dart';

class PaymentDetailsScreenBody extends StatelessWidget {
  const PaymentDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(child: PaymentMethodsListView()),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(child: CustomCreditCardWidget(formKey: formKey)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomButton(
                title: "Pay",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ThankYouScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
