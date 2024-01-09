import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';

class CustomTextBottonSheet extends StatelessWidget {
  const CustomTextBottonSheet({super.key, this.ontap});
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        // عرض الشاشة الخاصلا بالجوال
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 30, left: 12, right: 12),
        height: 35,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),

        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
