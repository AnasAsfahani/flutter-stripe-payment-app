import 'package:flutter/material.dart';

class CustomHalfCircle extends StatelessWidget {
  final double radius;
  final Color color;

  const CustomHalfCircle({
    super.key,
    this.radius = 17.5,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
    );
  }
}