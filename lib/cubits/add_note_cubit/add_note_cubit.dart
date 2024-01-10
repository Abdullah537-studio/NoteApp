import 'package:bloc/bloc.dart';
import 'package:flutter_to_do_list/Widget/Constants.dart';
import 'package:flutter_to_do_list/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  addNote(NoteModels note) async {
    emit(AddNoteLoading());
    // هون محطوط ال type dynamic ومعرفو بحرف يلي هو E مشان تبدلو بال model يلي عندك
    // generic
    try {
      var notebox = Hive.box<NoteModels>(kNoteBox);
      emit(AddNoteSuccess());
      await notebox.add(note);
    } catch (e) {
      AddNoteFailure(erroreMessage: e.toString());
    }
  }
}
