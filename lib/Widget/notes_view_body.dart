import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_appBar.dart';
import 'package:flutter_to_do_list/Widget/notes_listView.dart';
import 'package:flutter_to_do_list/views/edit_note_view.dart';

class NotesViewBodey extends StatelessWidget {
  const NotesViewBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ));
        },
        child: const Column(
          children: [
            SizedBox(height: 20),
            CustomAppBar(),
            Expanded(child: NotesListview())
          ],
        ),
      ),
    );
  }
}
// نحنا مستعملين Column  وهو Expanded على محور ال y أي ارتفاع الشاشة
// وال listview بتاخد مساحةولادها
// استعملنا Expanded مشان ال listview تاخد المساحة المتاحة ليها  Expanded _ flex