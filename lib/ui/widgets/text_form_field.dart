import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({
    super.key, required this.controller, required this.hintText, required this.textInputType, this.maxLine, this.validator,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final int? maxLine;
  final Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        validator: (value) {
          if (validator != null) {
            return validator!(value);
          }
          return null;
        },
        keyboardType: textInputType,
        maxLines: maxLine ?? 1,
        controller: controller,
        cursorColor: primaryColor,
        decoration:  InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0)),
        ),
      ),
    );
  }
}
