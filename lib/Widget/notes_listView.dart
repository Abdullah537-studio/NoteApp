import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/Widget/custom_note_item.dart';
import 'package:flutter_to_do_list/cubits/Notes_Cubit/notes_cubit_cubit.dart';
import 'package:flutter_to_do_list/models/note_model.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        if (state is NotesSuccessState) {
          List<NoteModels> notes = state.notes;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => NoteItem(
                noteModels: notes[index],
                colorCard: colorCard[index % colorCard.length],
              ),
              itemCount: notes.length,
            ),
          );
        } else {
          return const Center(
            child: Text("sorry we have an errore"),
          );
        }
      },
    );
  }
}
