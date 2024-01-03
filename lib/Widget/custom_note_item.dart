import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  final Color ColorCard;

  const NoteItem({super.key, required this.ColorCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 9, left: 9, right: 9),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
          color: ColorCard, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            minVerticalPadding: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 16),
              child: Text(
                "Build your career with tharwat sami ",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              splashColor: Colors.blueGrey,
              onPressed: () {},
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
                "May21,2023",
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
