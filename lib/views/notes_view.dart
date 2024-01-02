import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Add_note_buttom_sheet.dart';
import 'package:flutter_to_do_list/Widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddNoteButtomSheet(),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBodey(),
    );
  }
}
