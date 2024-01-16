import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_list/Widget/Add_note_buttom_sheet.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/Widget/notes_view_body.dart';
import 'package:flutter_to_do_list/cubits/Notes_Cubit/notes_cubit_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          shape: const CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              context: context,
              builder: (context) => const AddNoteButtomSheet(),
            );
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: const NotesViewBodey(),
      ),
    );
  }
}
