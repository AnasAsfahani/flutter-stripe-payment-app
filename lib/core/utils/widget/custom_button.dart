import 'package:flutter/material.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const CustomButton({
    super.key,
    this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width: 350,
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            const Color(0xff34A853),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: Styles.font20Regular().copyWith(color: Colors.black),
        ),
      ),
    );
  }
}