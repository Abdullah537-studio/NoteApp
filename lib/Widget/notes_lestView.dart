import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  final data = const [
    Color(0xFFF9CE7D),
    Color(0xFFE7EE99),
    Color(0xFF7FDFEC),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NoteItem(
        // لتكرار ال list السابقة
        ColorCard: data[index % data.length],
      ),
      itemCount: 6,
    );
  }
}
