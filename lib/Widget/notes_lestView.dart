import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NoteItem(),
      itemCount: 6,
    );
  }
}
