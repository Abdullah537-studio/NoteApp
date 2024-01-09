import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/Widget/custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => NoteItem(
          // لتكرار ال list السابقة
          ColorCard: colorCard[index % colorCard.length],
        ),
        itemCount: 12,
      ),
    );
  }
}
