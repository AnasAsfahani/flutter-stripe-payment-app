import 'package:flutter/material.dart';

class DottedBorder extends StatelessWidget {
  final int count;
  final double width;
  final double height;
  final double spacing;
  final Color color;

  const DottedBorder({
    super.key,
    this.count = 40,
    this.width = 4,
    this.height = 3,
    this.spacing = 0,
    this.color = const Color(0xffB8B8B8),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        count,
            (index) => Container(
          width: width,
          height: height,
          color: color,
        ),
      ),
    );
  }
}