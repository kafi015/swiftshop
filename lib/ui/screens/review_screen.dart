import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';
import '../widgets/appbar_back_button.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: const AppBarBackButtton(),
        title: const Text('Review'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
                    child: Card(
                      child: ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Abdullah Al Kafi',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                              'Reference site about Lorem Ipsum, giving information o'
                                  'n itsorigins, as well as a random Lipsum generator Reference si'
                                  'te about Lorem Ipsum, giving information on its origins, as well'
                                  ' asa random Lipsum generator',
                              style: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ),
                  );
                },
              )),
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
                        'Review ( 15 )',
                        style: titleTextStyle.copyWith(color: softGreyColor.withOpacity(0.8)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: GetBuilder(
                      builder: (cartController) {
                        // if (cartController.addToCartInProgress)
                        // {
                        //   return const Center(
                        //     child: CircularProgressIndicator(color: primaryColor,),
                        //   );
                        // }
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                )
                            ),
                            onPressed: () async {
                             // Get.to(const CreateReviewScreen());

                            },
                            child: const Icon(Icons.add));
                      }
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
