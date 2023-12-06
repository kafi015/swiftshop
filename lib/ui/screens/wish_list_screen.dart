import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/appbar_back_button.dart';
import '../widgets/product_details/category_card_widget.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: const BottomNavAppBarBackButton(),
        title: const Text('WishList'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ), itemBuilder: (context, index) {
          //  return const CategoryCardWidget(name: 'Dummy');
          return const CategoryCardWidget(name: 'dummy', imageUrl: appIcon, id: 4);
        }),
      ),
    );
  }
}
