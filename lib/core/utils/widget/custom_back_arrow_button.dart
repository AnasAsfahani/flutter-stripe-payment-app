import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';

class CustomBackArrowButton extends StatelessWidget {
  const CustomBackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SvgPicture.asset(Assets.svgArrowBack),
      ),
    );
  }
}
