import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
        color: blackColor,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w500,
        fontSize: 30,

      ),
    );
  }
}