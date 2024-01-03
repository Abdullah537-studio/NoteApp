import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_button_sheet.dart';
import 'package:flutter_to_do_list/Widget/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
            CustomBottonSheet()
          ],
        ),
      ),
    );
  }
}
