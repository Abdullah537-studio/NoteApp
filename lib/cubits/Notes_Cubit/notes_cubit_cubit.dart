import 'package:bloc/bloc.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() {
    try {
      var notebox = Hive.box<NoteModels>(kNoteBox);
      emit(NotesSuccessState(notes: notebox.values.toList()));
    } catch (e) {
      emit(NotesFailureState(erroreMassage: e.toString()));
    }
  }
}
