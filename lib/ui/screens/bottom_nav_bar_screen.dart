import 'package:flutter/material.dart';
import 'package:swiftshop/ui/screens/cart_screen.dart';
import 'package:swiftshop/ui/screens/category_screen.dart';
import 'package:swiftshop/ui/screens/home_screen.dart';
import 'package:swiftshop/ui/screens/wish_list_screen.dart';
import 'package:swiftshop/ui/utils/app_colors.dart';

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

  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          _selectedIndex = value;
          if(mounted) {
            setState(() {});
          }
        },
        selectedItemColor: primaryColor,
        unselectedItemColor: softGreyColor,
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Category'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist'
          ),
        ],
      ),
    );
  }
}
