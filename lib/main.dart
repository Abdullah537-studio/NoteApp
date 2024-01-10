import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_to_do_list/models/note_model.dart';
import 'package:flutter_to_do_list/simple_bloc_observer.dart';
import 'package:flutter_to_do_list/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  //مشان تعرف المشكلة من وين او ايه يلي حصل
  Bloc.observer = SimpleBlocObserver();
  // انتبه انك تعمل __ import hive ( dart ) __ لازم نستدعي  hive_flutter
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelsAdapter());
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // بما أنو لح استعمكلو بشاشة وحدة فقط
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}

// to install git
// winget install --id Git.Git -e --source winget
// branch يعني فرع بنحط فيه كل الكود بتاعنا
// ما هو SimpleBlocObserver
