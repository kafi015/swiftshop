// import 'package:flutter/material.dart';
// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});
//
//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(child: Text('Cart Screen!',style: TextStyle(fontSize: 50),),),
//     );
//   }
// }
/*
import 'package:swiftshop/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

// stateful widget - dynamic
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<String> productName = ['Mango', 'Banana', 'Orange', 'Grapes', 'Chery', 'Mango'];
  List<String> productUnit = ['KG', 'Dozen', 'KG', 'KG', 'KG', 'KG'];
  List<int> productPrice = [10, 20, 30, 40, 50, 60];
  List<String> productImage = [
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://image.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-260nw-1722111529.jpg',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
    'https://media.istockphoto.com/id/467328250/photo/mango.jpg?s=170667a&w=0&k=20&c=tv-8cS8XdXA6NDj6BhWqOhDZ79_oZwtkL8bzyO7bma4=',
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart', style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w500,
          ),),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: productName.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage(productImage[index].toString(),),
                                ),
                                const SizedBox(width: 16,),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(width: 16,),
                                      Text(productName[index].toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 16,),
                                      Text("${productUnit[index]}  \$${productPrice[index]}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                          onTap: (){},
                                          child: Container(
                                            height: 30, width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Colors.green,
                                            ),
                                            child: const Center(
                                              child: Text('Add to cart', style: TextStyle(
                                                color: Colors.white,
                                              ),),
                                            ),
                                          ),
                                        ),
                                      )

                                      //Text("Add to cart")),
                                      //IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
                                    ],
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiftshop/ui/utils/app_colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: greyColor,
          ), onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index){

                  }
              ),
          ),
          Container(
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.15),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: softGreyColor,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Checkout'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
