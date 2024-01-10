import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_Text_button_sheet.dart';
import 'package:flutter_to_do_list/Widget/custom_text_form_field.dart';

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
            CustomTextBottonSheet(
              ontap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
