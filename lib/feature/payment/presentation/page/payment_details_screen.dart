import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/widget/custom_back_arrow_button.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../widget/payment_details/payment_details_screen_body.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  CustomBackArrowButton(),
        backgroundColor: Colors.transparent ,
        elevation:  0 ,
        title: Text("Payment Details" , style:  Styles.font25BoldBase,) ,
        centerTitle: true,

      ),
      body:  PaymentDetailsScreenBody(),

    );
  }
}
