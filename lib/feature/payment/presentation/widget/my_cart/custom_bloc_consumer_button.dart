import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/feature/payment/presentation/cubit/stripe_cubit.dart';
import 'package:payment_app/feature/payment/presentation/cubit/stripe_states.dart';
import 'package:payment_app/feature/payment/presentation/page/thank_you_screen.dart';
import '../../../../../core/utils/widget/custom_button.dart';
import '../../../data/model/payment_intent_models/payment_intent_request_model/payment_intent_request_model.dart';

class CustomBlocConsumerButton extends StatelessWidget {
  const CustomBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripeCubit, StripeState>(
      listener: (context, state) {
        if (state is StripeSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ThankYouScreen();
              },
            ),
          );
        }
        if (state is StripeFailure) {
          Navigator.pop(context) ;
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            context.read<StripeCubit>().makePayment(
              PaymentIntentRequestModel(
                amount: "100",
                currency: "USD",
                customerId: "cus_Vcs04mrV6mHgM9",
              ),

            );
          },
          isLoading: state is StripeLoading ? true : false,
          title: "PAY",
        );
      },
    );
  }
}
