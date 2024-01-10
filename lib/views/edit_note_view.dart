import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewNoteBody(),
    );
  }
}
