import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Add_note_buttom_sheet.dart';
import 'package:flutter_to_do_list/Widget/custom_appBar.dart';

class EditViewNoteBody extends StatelessWidget {
  const EditViewNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomAppBar(icon: Icon(Icons.check), title: "Edit Note"),
          SizedBox(height: 32),
          AddNoteButtomSheet()
        ],
      ),
    );
  }
}
