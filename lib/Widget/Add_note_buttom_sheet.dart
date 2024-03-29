import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_list/Widget/add_note_button_sheet_form.dart';
import 'package:flutter_to_do_list/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            // استعمل هون package  مشان تعرض رسالة انو في خطأ
            print("faild ${state.erroreMessage}");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              // لو ب true  مافيك تكبس عشي بالشاشة
              absorbing: state is AddNoteLoading ? true : false,
              child: AddNoteForm());
        },
      ),
    );
  }
}
//Bloc Consumer
//أغير بال ui  بظهر Bloc Consumer
//Bloc listener
//
