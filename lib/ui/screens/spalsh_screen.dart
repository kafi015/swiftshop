

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import 'authentication/email_verification_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) async{
      Get.to(EmailVerificationScreen());


    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Center(
                    child: Image.asset(
                      appIcon,
                      width: 300,
                    ))),
            const Column(
              children: [
                CircularProgressIndicator(
                  color: primaryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Vertion 1.0.0",
                    style: TextStyle(color: greyColor,
                        letterSpacing: 0.4
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
