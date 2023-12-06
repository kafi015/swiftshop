import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/authentication/email_verification_screen.dart';
import '../state_manager/bottom_nav_bar_controller.dart';
import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class SwiftShopDrawer extends StatelessWidget {
  const SwiftShopDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white.withOpacity(0.4),
      child: ListView(
        children: [
          const DrawerHeader(child: Icon(Icons.person,size: 100,color: Colors.white,)),
          Card(
            color: primaryColor,
            child: ListTile(
              onTap: (){
                Get.find<BottomNavigationBarController>().changeIndex(1);
              },
              leading: const Icon(Icons.category,color: Colors.white,),
              title: Text('Category',style: drawerTitleTextStyle,),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            color: primaryColor,
            child: ListTile(
              onTap: (){
                Get.find<BottomNavigationBarController>().changeIndex(2);
              },
              leading: const Icon(Icons.shopping_cart,color: Colors.white,),
              title: Text('Cart',style: drawerTitleTextStyle,),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            color: primaryColor,
            child: ListTile(
              onTap: (){
                Get.find<BottomNavigationBarController>().changeIndex(3);
              },
              leading: const Icon(Icons.favorite,color: Colors.white,),
              title: Text('WishList',style: drawerTitleTextStyle,),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            color: primaryColor,
            child: ListTile(
              onTap: () async {
                final Uri launchUri = Uri(
                  scheme: 'TEL',
                  path: '+8801622016786',
                );
                await launchUrl(launchUri);
              },
              leading: const Icon(Icons.call,color: Colors.white,
              ),
              title: Text('Contact Us',style: drawerTitleTextStyle,),
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            color: primaryColor,
            child: ListTile(
              onTap: () async {
                final Uri launchUri = Uri(
                  scheme: 'sms',
                  path: '+8801622016786',
                  queryParameters: <String, String>{
                    'body': Uri.encodeComponent(
                        'Welcome_to_SwifShop. Join_us_now_for_explore_your_shopping_experience!'
                    ),
                  },
                );
                await launchUrl(launchUri);
              },
              leading: const Icon(Icons.card_giftcard,color: Colors.white,
              ),
              title: Text('Invite Friends',style: drawerTitleTextStyle,),
            ),
          ),
          const SizedBox(height: 150,),
          Card(
            color: primaryColor,
            child: ListTile(
              onTap: (){
                Get.to(const EmailVerificationScreen());
              },
              leading: const Icon(Icons.logout,color: Colors.white,),
              title: Text('LogOut',style: drawerTitleTextStyle,),
            ),
          ),
        ],
      ),
    );
  }
}