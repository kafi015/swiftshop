import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swiftshop/ui/utils/text_style.dart';

import '../../utils/app_colors.dart';
import '../../widgets/text_form_field.dart';
import '../../widgets/title_text.dart';
import 'otp_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                appIcon,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleText(
                text: "Welcome Back",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Please enter your email address',
                style: TextStyle(
                  fontSize: 18,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormFieldApp(
                validator: (value) => EmailValidator.validate(value!)
                    ? null
                    : "Please enter a valid email",
                controller: _emailETController,
                hintText: 'Email Address',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(onPressed: () {

                  Get.to(OtpVerificationScreen(email: _emailETController.text,));

                }, child: Text('Next',style: buttonTextStyle,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
