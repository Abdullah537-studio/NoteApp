import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  // انتبه انك تعمل __ import hive ( dart ) __ لازم نستدعي  hive_flutter
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: const NotesView(),
  ));
}


// to install git
// winget install --id Git.Git -e --source winget
// branch يعني فرع بنحط فيه كل الكود بتاعنا 

