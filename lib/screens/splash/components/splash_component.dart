import 'package:flutter/material.dart';

import '../../../constanstes.dart';
import '../../../size_config.dart';

class SplashsContent extends StatelessWidget {
  const SplashsContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "KIKISHOP",
          style: TextStyle(
            fontSize: getProportionateScreenwidth(36),
            color: PrimaryColor,
          ),
        ),
        Text(text,textAlign: TextAlign.center,),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenwidth(325),
        ),
      ],
    );
  }
}
