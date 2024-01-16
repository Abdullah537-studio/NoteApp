part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

class NotesLoadingState extends NotesCubitState {}

class NotesSuccessState extends NotesCubitState {
  final List<NoteModels> notes;
  NotesSuccessState({required this.notes});
}

class NotesFailureState extends NotesCubitState {
  final String erroreMassage;

  NotesFailureState({required this.erroreMassage});
}
