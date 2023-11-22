import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/text_style.dart';

class Remarks extends StatelessWidget {
  const Remarks({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        TextButton(
            onPressed: onTap,
            child: const Text(
              'See All',
              style: TextStyle(color: primaryColor),
            )),
      ],
    );
  }
}