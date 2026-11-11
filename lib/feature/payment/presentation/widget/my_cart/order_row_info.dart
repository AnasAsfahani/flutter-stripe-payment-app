import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class OrderRowInfo extends StatelessWidget {
  final String title;
  final String value;
  const OrderRowInfo({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.font18Regular()),
        Text(value, style: Styles.font18Regular()),
      ],
    );
  }
}
