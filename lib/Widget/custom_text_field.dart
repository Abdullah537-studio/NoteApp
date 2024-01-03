import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color1]) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color1 ?? Colors.white),
      borderRadius: BorderRadius.circular(9));
}
