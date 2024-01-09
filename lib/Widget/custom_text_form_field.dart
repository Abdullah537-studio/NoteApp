import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      onSaved: onSaved,
      // سؤال ليش ال validator  الجواب مشان اتاكد من صحة المدخلات
      validator: (value) {
        // يعني ما بعرف اذا هي ب null  بدي شوفها اذا null رجع  message  اذا مالها  null  فخلص  true  مالك مضطر تشيك عليها
        if (value?.isEmpty ?? true) {
          return "Field is required ";
        } else {
          return null;
        }
      },
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
