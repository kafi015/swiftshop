import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiftshop/ui/screens/authentication/email_verification_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../state_manager/bottom_nav_bar_controller.dart';
import '../utils/app_colors.dart';
import '../widgets/home/appbar_icons.dart';
import '../widgets/home/home_remarks.dart';
import '../widgets/home/search_textfield.dart';
import '../widgets/product_details/category_card_widget.dart';
import '../widgets/swiftshop_drawer.dart';
import 'authentication/complete_profile.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,

        title: Row(
          children: [
            Builder(
              builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                 // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  child: Image.asset(
                    appIcon,scale: 4,
                  ),
                );
              }
            ),
            // const Text(
            //   'ShopanBD',
            //   style: TextStyle(
            //     color: primaryColor,
            //     fontSize: 24,
            //   ),
            // ),
            const Spacer(),
            AppBarIcons(
              icon: Icons.person, onTap: () {Get.to(const CompleteProfileScreen());  },
              // onTap: () async {
              //   await Get.find<AuthController>().isLoggedIn()
              //       ? Get.to(const CompleteProfileScreen())
              //       : Get.to(const EmailVerificationScreen());
              // },
            ),
            const SizedBox(
              width: 10,
            ),
            AppBarIcons(
              icon: Icons.call,
              onTap: () async {
                final Uri launchUri = Uri(
                  scheme: 'TEL',
                  path: '+8801622016786',
                );
                await launchUrl(launchUri);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            AppBarIcons(
              icon: Icons.logout,
              onTap: () async{
                //await Get.find<AuthController>().logOut();
                Get.off(const EmailVerificationScreen());
              },
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),


      drawer: const SwiftShopDrawer(),


      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextField(),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 200,
                      width: 360,
                      decoration: const BoxDecoration(
                          color: Colors.amber
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 200,
                      width: 360,
                      decoration: const BoxDecoration(
                          color: Colors.red
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 200,
                      width: 360,
                      decoration: const BoxDecoration(
                          color: Colors.purple
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 200,
                      width: 360,
                      decoration: const BoxDecoration(
                          color: Colors.blue
                      ),
                    ),

                  ],
                ),
              ),

              // GetBuilder<HomeController>(builder: (homeController) {
              //   if (homeController.getSliderInProgress) {
              //     return const
              //     SizedBox(
              //       height: 200,
              //       child: Center(
              //         child: CircularProgressIndicator(
              //           color: primaryColor,
              //         ),
              //       ),
              //     );
              //   } else {
              //     return HomeCaruosalWidget(
              //       homeSliderModel: homeController.getHomeSliderModel,
              //     );
              //   }
              // }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'All Categories',
                onTap: () {
                  Get.find<BottomNavigationBarController>().changeIndex(1);
                },
              ),
              const SizedBox(
                height: 16,
              ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),

                  ],
                ),
              ),

              // GetBuilder<CategoryController>(builder: (categoryController) {
              //   if (categoryController.getCategotyInProgress) {
              //     return const SizedBox(
              //       height: 100,
              //       child: Center(
              //         child: CircularProgressIndicator(
              //           color: primaryColor,
              //         ),
              //       ),
              //     );
              //   } else {
              //     return SingleChildScrollView(
              //       physics: const BouncingScrollPhysics(),
              //       scrollDirection: Axis.horizontal,
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: categoryController.getCategoryModel.categories!
              //             .map((category) => CategoryCardWidget(
              //             name: category.categoryName ?? '',
              //             imageUrl: category.categoryImg ?? '',
              //             id: category.id ?? 0))
              //             .toList(),
              //       ),
              //     );
              //   }
              // }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'Popular',
                onTap: () {
                  //  Get.to(const ProductListScreen());
                },
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),

                  ],
                ),
              ),
              // GetBuilder<ProductByRemarkController>(
              //     builder: (popularRemarkController) {
              //       if (popularRemarkController.getPopularRemarkInProgress) {
              //         return const SizedBox(
              //           height: 100,
              //           child: Center(
              //             child: CircularProgressIndicator(
              //               color: primaryColor,
              //             ),
              //           ),
              //         );
              //       } else {
              //         return SingleChildScrollView(
              //           physics: const BouncingScrollPhysics(),
              //           scrollDirection: Axis.horizontal,
              //           child: Row(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: popularRemarkController
              //                 .getPopularRemarkModel.productCategoryData!
              //                 .map(
              //                   (product) => ProductCart(
              //                 product: product,
              //               ),
              //             )
              //                 .toList(),
              //           ),
              //         );
              //       }
              //     }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'Special',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),

                  ],
                ),
              ),
              // GetBuilder<ProductByRemarkController>(
              //     builder: (specialRemarkController) {
              //       if (specialRemarkController.getSpecialRemarkInProgress) {
              //         return const SizedBox(
              //           height: 100,
              //           child: Center(
              //             child: CircularProgressIndicator(
              //               color: primaryColor,
              //             ),
              //           ),
              //         );
              //       } else {
              //         return SingleChildScrollView(
              //           physics: const BouncingScrollPhysics(),
              //           scrollDirection: Axis.horizontal,
              //           child: Row(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: specialRemarkController
              //                 .getSpecialRemarkModel.productCategoryData!
              //                 .map(
              //                   (product) => ProductCart(
              //                 product: product,
              //               ),
              //             )
              //                 .toList(),
              //           ),
              //         );
              //       }
              //     }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'New',
                onTap: () {},
              ),

              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),
                    CategoryCardWidget(
                        name: 'Flower',
                        imageUrl: appIcon,
                        id: 0),

                  ],
                ),
              ),
              // GetBuilder<ProductByRemarkController>(
              //     builder: (newRemarkController) {
              //       if (newRemarkController.getNewRemarkInProgress) {
              //         return const SizedBox(
              //           height: 100,
              //           child: Center(
              //             child: CircularProgressIndicator(
              //               color: primaryColor,
              //             ),
              //           ),
              //         );
              //       } else {
              //         return SingleChildScrollView(
              //           physics: const BouncingScrollPhysics(),
              //           scrollDirection: Axis.horizontal,
              //           child: Row(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: newRemarkController
              //                 .getNewRemarkModel.productCategoryData!
              //                 .map(
              //                   (product) => ProductCart(
              //                 product: product,
              //               ),
              //             )
              //                 .toList(),
              //           ),
              //         );
              //       }
              //     }),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



