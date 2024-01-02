import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
          color: const Color(0xFFF9CE7D),
          borderRadius: BorderRadius.circular(20)),
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
                width: 260,
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
