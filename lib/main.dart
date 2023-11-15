import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiftshop/ui/screens/spalsh_screen.dart';
import 'package:swiftshop/ui/utils/app_colors.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwiftShop(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
              backgroundColor: primaryColor)
        )
      ),
    );
  }
}

class SwiftShop extends StatelessWidget {
  const SwiftShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

