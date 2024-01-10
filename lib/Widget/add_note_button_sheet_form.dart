import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_to_do_list/Widget/custom_Text_button_sheet.dart';
import 'package:flutter_to_do_list/Widget/custom_text_form_field.dart';
import 'package:flutter_to_do_list/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_to_do_list/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  // ال Form  بدو كم حاجة
  final GlobalKey<FormState> formKey = GlobalKey();
  // مشان اذا ادخل المستخدم قيمة غلط
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hint: "Title",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hint: "Content",
                maxLines: 5,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomTextBottonSheet(
                    isLoading: state is AddNoteLoading ? true : false,
                    ontap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var noteModel = NoteModels(
                            color: Colors.blue.value,
                            title: title!,
                            subtitle: subTitle!,
                            date: DateTime.now().toString());
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autoValidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
