import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color1]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color1 ?? Colors.white),
        borderRadius: BorderRadius.circular(9));
  }
}
