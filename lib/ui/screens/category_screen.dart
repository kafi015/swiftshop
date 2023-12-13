import 'package:flutter/material.dart';
import 'package:swiftshop/ui/utils/app_colors.dart';
import 'package:swiftshop/ui/widgets/appbar_back_button.dart';
import 'package:get/get.dart';
import 'package:swiftshop/ui/widgets/home/home_remarks.dart';
import 'package:swiftshop/ui/widgets/product_details/category_card_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: const BottomNavAppBarBackButton(),
        title: Text('Categories'),
      ),
      //body: Center(child: Text('Category Screen!',style: TextStyle(fontSize: 50),),),

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
