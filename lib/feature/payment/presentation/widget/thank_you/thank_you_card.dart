import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/feature/payment/presentation/widget/my_cart/total_price.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/widget/dotted_border.dart';
import '../my_cart/order_row_info.dart';
import 'check_circle.dart';
import 'custom_half_circle.dart';
import 'master_card_container.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  static const double cardHeight = 672;
  static const double cardWidth = 350;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: cardHeight,
            width: cardWidth,
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Text("Thank You!", style: Styles.font25BoldBase),
                  Text(
                    'Your transaction was successful',
                    style: Styles.font18Regular(),
                  ),
                  SizedBox(height: 30),

                  OrderRowInfo(title: "Date", value: r"01/24/2023"),
                  OrderRowInfo(title: "Time", value: r"10:15 AM"),
                  OrderRowInfo(title: "To", value: r"Sam Louis"),
                  SizedBox(height: 20),

                  const Divider(
                    color: Color(0xffC7C7C7),
                    thickness: 1,
                    height: 20,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(height: 20),
                  TotalPrice(value: r"$50.97"),
                  SizedBox(height: 40),
                  MasterCardContainer(),
                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.svgBarcodeScanner),
                      SizedBox(width: 40),
                      Container(
                        height: 58,
                        width: 113,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 1.5,
                            color: Color(0xff34A853),
                          ),
                        ),

                        child: Center(
                          child: Text(
                            "PAID",
                            style: Styles.font24SemiBoldBase.copyWith(
                              color: Color(0xff34A853),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: cardHeight / 3 / 4),
                ],
              ),
            ),
          ),

          // Success Icon
          CheckCircle(),

          // Left Half Circle
          Positioned(
            bottom: cardHeight / 4,
            left: -17.5,
            child: const CustomHalfCircle(),
          ),

          // Right Half Circle
          Positioned(
            bottom: cardHeight / 4,
            right: -17.5,
            child: const CustomHalfCircle(),
          ),

          // Dotted Separator
          Positioned(
            bottom: cardHeight / 4 + 17.5,
            left: 30,
            right: 30,
            child: const DottedBorder(),
          ),
        ],
      ),
    );
  }
}
