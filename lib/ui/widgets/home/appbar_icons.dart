import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key, required this.icon, required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: primaryColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20.0),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 4.0),
        child: CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 15,
          child: Icon(icon ,color: Colors.amber,size: 22,),
        ),
      ),
    );
  }
}