import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_appBar.dart';
import 'package:flutter_to_do_list/Widget/custom_note_item.dart';

class NotesViewBodey extends StatelessWidget {
  const NotesViewBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [SizedBox(height: 20), CustomAppBar(), NoteItem()],
      ),
    );
  }
}
