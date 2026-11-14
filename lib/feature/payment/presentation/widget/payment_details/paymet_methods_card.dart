import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodsCard extends StatelessWidget {
  final String image;
  final bool isActive;
  final VoidCallback onTap;

  const PaymentMethodsCard({
    super.key,
    required this.image,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: 62,
          width: 104,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: isActive ? 1.5 : 1,
              color: isActive ? const Color(0xff34A853) : Colors.grey,
            ),
          ),
          child: SvgPicture.asset(image, fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}
