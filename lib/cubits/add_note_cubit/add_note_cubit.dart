import 'package:bloc/bloc.dart';
import 'package:flutter_to_do_list/models/note_model.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModels noteModel) {}
}