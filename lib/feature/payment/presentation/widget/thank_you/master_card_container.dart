import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';

import '../../../../../core/utils/assets.dart';

class MasterCardContainer extends StatelessWidget {
  const MasterCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: 305,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(Assets.svgMasterCardLogo),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Credit Card", style: Styles.font16Regular()),
              Text(
                "Mastercard **78 ",
                style: Styles.font16Regular().copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
