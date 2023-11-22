import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.text,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: 'search',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          prefixIcon: const Icon(
            Icons.search,
            color: softGreyColor,
          ),
          fillColor: Colors.grey[100],
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(34.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(34.0)),
        ),
      ),
    );
  }
}