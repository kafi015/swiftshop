import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/text_style.dart';
import '../../widgets/text_form_field.dart';
import '../../widgets/title_text.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {

  final TextEditingController _firstNameETController = TextEditingController();
  final TextEditingController _lastNameETController = TextEditingController();
  final TextEditingController _mobileETController = TextEditingController();
  final TextEditingController _cityETController = TextEditingController();
  final TextEditingController _shippingAddressETController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  appIcon,
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TitleText(
                  text: "Complete Profile",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Get Started with us with your details',
                  style: TextStyle(
                    fontSize: 18,
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldApp(
                    controller: _firstNameETController,
                    hintText: 'First Name',
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldApp(
                    controller: _lastNameETController,
                    hintText: 'Last Name',
                    textInputType: TextInputType.name),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldApp(
                    controller: _mobileETController,
                    hintText: 'Mobile',
                    textInputType: TextInputType.phone),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldApp(
                    controller: _cityETController,
                    hintText: 'City',
                    textInputType: TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldApp(
                    controller: _shippingAddressETController,
                    hintText: 'Shipping Address',
                    textInputType: TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(onPressed: () {}, child: Text('Complete',style: buttonTextStyle,)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
