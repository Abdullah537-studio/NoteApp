import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_text_field.dart';

class EditViewNoteBody extends StatelessWidget {
  const EditViewNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 54),
          Row(
            children: [Text("Edit Note"), Spacer(), Icon(Icons.search)],
          ),
          SizedBox(height: 54),
          CustomTextField(
            hint: "Text",
          ),
          SizedBox(height: 19),
          CustomTextField(
            hint: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
