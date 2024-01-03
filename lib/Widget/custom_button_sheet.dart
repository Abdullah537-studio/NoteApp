import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';

class CustomBottonSheet extends StatelessWidget {
  const CustomBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
