import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/widget/custom_back_arrow_button.dart';

import '../../../../core/utils/assets.dart';
import '../widget/thank_you/thank_you_screen_body.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  CustomBackArrowButton(),
        backgroundColor: Colors.transparent ,
        elevation:  0 ,

      ),
      body:  ThankYouScreenBody(),

    );
  }
}
