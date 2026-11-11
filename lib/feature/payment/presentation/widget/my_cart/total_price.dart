import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  final String value;
  const TotalPrice({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total", style: Styles.font24SemiBold()),
        Text(value, style: Styles.font24SemiBold()),
      ],
    );
  }
}
