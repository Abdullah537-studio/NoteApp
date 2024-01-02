import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
