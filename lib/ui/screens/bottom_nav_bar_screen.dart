import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:swiftshop/ui/screens/cart_screen.dart';
import 'package:swiftshop/ui/screens/category_screen.dart';
import 'package:swiftshop/ui/screens/home_screen.dart';
import 'package:swiftshop/ui/screens/wish_list_screen.dart';
import 'package:swiftshop/ui/utils/app_colors.dart';

import '../state_manager/bottom_nav_bar_controller.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishListScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> _onBackButtonPress(context),
      child: Scaffold(
        bottomNavigationBar: GetBuilder<BottomNavigationBarController>(
          builder:(controller) => BottomNavigationBar(
            elevation: 4,
            backgroundColor: Colors.white,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.black38,
            selectedFontSize: 14,
            unselectedFontSize: 10,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
            },
            currentIndex: controller.selectedIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_sharp), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Wish List"),
            ],
          ),
        ),
        body: GetBuilder<BottomNavigationBarController>(
          builder: (controller)=>_screens[controller.selectedIndex],
        ),
      ),
    );
  }


  Future<bool> _onBackButtonPress (BuildContext context) async {
    bool? exitApp =await showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: const Text('Alert'),
        content: const Text('Do you want to exit?'),
        actions: <Widget>[
          ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child:  const Text('No')),
          ElevatedButton(onPressed: (){Navigator.of(context).pop(true);}, child:  const Text('Yes')),

          // TextButton(onPressed: (){
          //   Navigator.of(context).pop(false);
          // }, child: Text('No')),
          // TextButton(onPressed: (){
          //   Navigator.of(context).pop(true);
          // }, child: Text('Yes')),
        ],
      );
    }
    );
    return exitApp ?? false;
  }
}