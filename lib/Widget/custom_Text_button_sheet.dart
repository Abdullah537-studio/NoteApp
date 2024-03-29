import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';

class CustomTextBottonSheet extends StatelessWidget {
  const CustomTextBottonSheet({super.key, this.ontap, this.isLoading = false});
  final Function()? ontap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        // عرض الشاشة الخاصلا بالجوال
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 16),
        height: 35,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),

        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
        ),
      ),
    );
  }
}
