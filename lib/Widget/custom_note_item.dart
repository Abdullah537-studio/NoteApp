import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/models/note_model.dart';

class NoteItem extends StatelessWidget {
  final Color colorCard;
  final NoteModels noteModels;

  const NoteItem({
    super.key,
    required this.colorCard,
    required this.noteModels,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 9, left: 9, right: 9),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            minVerticalPadding: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                noteModels.title,
                style: const TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 16),
              child: Text(
                noteModels.subtitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              splashColor: Colors.blueGrey,
              onPressed: () {
                noteModels.delete();
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 200,
              ),
              Text(
                noteModels.date.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
