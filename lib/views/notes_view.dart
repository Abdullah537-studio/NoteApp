import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Add_note_buttom_sheet.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/Widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            context: context,
            builder: (context) => const AddNoteButtomSheet(),
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
