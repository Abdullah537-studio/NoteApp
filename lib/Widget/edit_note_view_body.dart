import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_appBar.dart';
import 'package:flutter_to_do_list/Widget/custom_text_form_field.dart';

class EditViewNoteBody extends StatelessWidget {
  const EditViewNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(icon: Icon(Icons.check), title: "Edit Note"),
          SizedBox(height: 50),
          CustomTextField(hint: "Title"),
          SizedBox(height: 32),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
