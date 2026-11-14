import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/utils/widget/custom_back_arrow_button.dart';
import '../widget/my_cart/my_cart_screen_body.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("My Cart", style: Styles.font25BoldBase),
        centerTitle: true,
      ),
      body: MyCartScreenBody(),
    );
  }
}
