import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppBarBackButtton extends StatelessWidget {
  const AppBarBackButtton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: greyColor,
      ),
    );
  }
}

class BottomNavAppBarBackButton extends StatelessWidget {
  const BottomNavAppBarBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
       // Get.find<BottomNavigationBarController>().backToHome();
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: greyColor,
      ),
    );
  }
}
