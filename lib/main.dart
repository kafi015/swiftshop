import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiftshop/ui/screens/spalsh_screen.dart';
import 'package:swiftshop/ui/state_manager/bottom_nav_bar_controller.dart';
import 'package:swiftshop/ui/utils/app_colors.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetxBinding(),
      debugShowCheckedModeBanner: false,
      home: const SwiftShop(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 40),
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
    return const SplashScreen();
  }
}


class GetxBinding extends Bindings {
  @override
  void dependencies() {
    //  Get.create<BottomNavigationBarController>(() => BottomNavigationBarController());
    //Get.put(() => BottomNavigationBarController());
    Get.put(BottomNavigationBarController());

  }
}
