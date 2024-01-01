import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/views/notes_view.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NotesApp(),
  ));
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const NotesView();
  }
}
// to install git
// winget install --id Git.Git -e --source winget
// branch يعني فرع بنحط فيه كل الكود بتاعنا 

