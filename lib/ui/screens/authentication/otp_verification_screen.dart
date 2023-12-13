import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swiftshop/ui/screens/authentication/complete_profile.dart';
import 'package:swiftshop/ui/screens/product_details_screen.dart';

import '../../utils/app_colors.dart';
import '../../utils/text_style.dart';
import '../../widgets/title_text.dart';


class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key, required this.email}) : super(key: key);
  final String email;

  final TextEditingController _otpETController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Image.asset(
                  appIcon,
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TitleText(
                  text: "Enter OTP Code",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'A 4 Digit OTP Code has been Sent\n\t\t$email',
                  style: const TextStyle(
                    fontSize: 18,
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                PinCodeTextField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter the otp';
                    } else {
                      return null;
                    }
                  },
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  controller: _otpETController,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 45,
                      fieldWidth: 45,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      selectedColor: Colors.green,
                      activeColor: primaryColor,
                      inactiveColor: primaryColor,
                      inactiveFillColor: Colors.white),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  appContext: context,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(onPressed: () {

                  Get.to(const CompleteProfileScreen());

                  }, child: Text('Next',style: buttonTextStyle,)),
                ),
                /*Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: double.infinity,
                        child: ElevatedButton(onPressed: () {                  Get.to(CompleteProfileScreen());
                        }, child: Text('Next'))),*/
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 13, color: greyColor),
                    text: 'This code will be expire in ',
                    children: [
                      TextSpan(
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.w600),
                        text: '120s',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Resend Code',
                    style: TextStyle(color: greyColor.withOpacity(0.5)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
