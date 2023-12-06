import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appbar_back_button.dart';

class NProductDetailsScreen extends StatefulWidget {
  const NProductDetailsScreen(
      {Key? key,
      required this.productID,
      required this.previousScreen,
      required this.index})
      : super(key: key);

  final int productID;
  final int index;
  final String previousScreen;

  @override
  State<NProductDetailsScreen> createState() => _NProductDetailsScreenState();
}

class _NProductDetailsScreenState extends State<NProductDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: const Text('Product Details'),
      ),
      body: GetBuilder<Products>(builder: (productController) {
        for (int i = 0; i < productController.products.length; i++) {
          if (productController.products[i]['id'] == widget.productID) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ProductImageCarusal(
                          images: [
                            productController.products[i]['images'][0],
                            productController.products[i]['images'][1],
                            productController.products[i]['images'][2],
                            productController.products[i]['images'][3],
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 70,
                                    child: Text(
                                      productController.products[i]['title'] ??
                                          'Unknown',
                                      style: titleTextStyle.copyWith(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  ProductStepper(
                                      onDecrement: (int i){},
                                      onIncrement: (int i){},
                                      indexCart: i)
                                ],
                              ),
                              Row(
                                children: [
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        productController.products[i]['rating'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: greyColor.withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(ReviewScreen(
                                        index: widget.index,
                                      ));
                                    },
                                    child: const Text(
                                      'Reviews',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  GetBuilder<WishListController>(
                                      builder: (wishListController) {
                                    if (wishListController
                                        .addNewItemInProgress) {
                                      return const Center(
                                        child: CircularProgressIndicator(
                                          color: primaryColor,
                                        ),
                                      );
                                    } else {
                                      return InkWell(
                                        onTap: () {
                                          if (productController.wishList
                                              .contains(productController
                                                  .products[widget.index])) {
                                            Get.snackbar(
                                                'Wish List Add Failed.',
                                                'The item is already exist in the Wish List.',
                                                snackPosition:
                                                    SnackPosition.BOTTOM);
                                          } else {
                                            productController.wishList.add(
                                                productController
                                                    .products[widget.index]);
                                            log('WishList Added succenfully');
                                            Get.snackbar(
                                                'WishList Added Successfully.',
                                                'The item is added to the WishList.',
                                                snackPosition:
                                                    SnackPosition.BOTTOM);
                                          }
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  }),
                                ],
                              ),
                              // Text(
                              //   'Colors',
                              //   style: subTitleTextStyle.copyWith(fontSize: 20),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              // Row(
                              //   children: [
                              //     for (int i = 0; i < _colors.length; i++)
                              //       Padding(
                              //         padding:
                              //             const EdgeInsets.only(right: 5.0),
                              //         child: InkWell(
                              //           borderRadius:
                              //               BorderRadius.circular(20.0),
                              //           onTap: () {
                              //             Get.find<CartProductItemController>()
                              //                 .setProductColor(_colors[i]);
                              //           },
                              //           child: CircleAvatar(
                              //             backgroundColor: _colors[i],
                              //             radius: 15,
                              //             child: GetBuilder<
                              //                 CartProductItemController>(
                              //               builder: (controller) => Visibility(
                              //                   visible: Get.find<
                              //                               CartProductItemController>()
                              //                           .getProductColor ==
                              //                       _colors[i],
                              //                   child: const Icon(
                              //                     Icons.check,
                              //                     color: Colors.white,
                              //                   )),
                              //             ),
                              //           ),
                              //         ),
                              //       )
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              // Text(
                              //   'Size',
                              //   style: subTitleTextStyle.copyWith(fontSize: 20),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              // Row(
                              //   children: [
                              //     for (int i = 0; i < _sizes.length; i++)
                              //       Padding(
                              //         padding:
                              //             const EdgeInsets.only(right: 5.0),
                              //         child: InkWell(
                              //           borderRadius:
                              //               BorderRadius.circular(20.0),
                              //           onTap: () {
                              //             Get.find<CartProductItemController>()
                              //                 .setProductSize(_sizes[i]);
                              //           },
                              //           child: GetBuilder<
                              //               CartProductItemController>(
                              //             builder: (controller) => CircleAvatar(
                              //               radius: 17,
                              //               backgroundColor: softGreyColor,
                              //               child: CircleAvatar(
                              //                 backgroundColor:
                              //                     controller.getProductSize ==
                              //                             _sizes[i]
                              //                         ? primaryColor
                              //                         : Colors.white,
                              //                 radius: 15,
                              //                 child: Padding(
                              //                   padding:
                              //                       const EdgeInsets.all(5.0),
                              //                   child: Text(
                              //                     _sizes[i],
                              //                     style: TextStyle(
                              //                         fontWeight:
                              //                             FontWeight.w500,
                              //                         color: controller
                              //                                     .getProductSize ==
                              //                                 _sizes[i]
                              //                             ? Colors.white
                              //                             : primaryColor),
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //           ),
                              //         ),
                              //       )
                              //   ],
                              // ),
                              const SizedBox(
                                height: 100,
                              ),
                              Text(
                                'Description',
                                style: titleTextStyle.copyWith(
                                    color: Colors.grey.shade700),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                productController.products[i]['description'] ??
                                    'Unknown',
                                style: const TextStyle(color: softGreyColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      )),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: subTitleTextStyle.copyWith(
                                  color: Colors.grey.shade700),
                            ),
                            Text('৳${productController.products[i]['price']}',
                                style: subTitleTextStyle.copyWith(
                                    color: primaryColor, fontSize: 20)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: GetBuilder<CartController>(
                            builder: (cartController) {
                          if (cartController.addToCartInProgress) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              ),
                            );
                          }
                          return ElevatedButton(
                              onPressed: () {
                                if (productController.carts.contains(
                                    productController.products[widget.index])) {
                                  if (productController.wishList.contains(
                                      productController
                                          .products[widget.index])) {
                                    productController.wishList.remove(
                                        productController
                                            .products[widget.index]);
                                  }
                                  Get.snackbar('Cart Add Failed.',
                                      'The item is already exist in the Cart List.',
                                      snackPosition: SnackPosition.BOTTOM);
                                } else {
                                  if (productController.wishList.contains(
                                      productController
                                          .products[widget.index])) {
                                    productController.wishList.remove(
                                        productController
                                            .products[widget.index]);
                                  }
                                  productController.carts.add(
                                      productController.products[widget.index]);
                                  Get.find<Products>().calculateTotalPrice();
                                  log('Cart Added succenfully');
                                  Get.snackbar('Cart Added Successfully.',
                                      'The item is added to the cart.',
                                      snackPosition: SnackPosition.BOTTOM);
                                }
                                productController.updateProducts();
                              },
                              child: const Text('Add to Cart'));
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        }
        return Container();

        //
        //     return Center(
        //       child: Text('There are no Data',style: titleTextStyle,),
        //     );
      }),
    );
  }

  List<String> getSizes(String size) {
    return size.split(',');
  }

  List<Color> getColors(String color) {
    List<Color> hexColors = [];
    List<String> colors = color.split(',');
    for (String c in colors) {
      c = c.replaceAll('#', '0xFF');
      hexColors.add(Color(int.parse(c)));
    }
    return hexColors;
  }
}
