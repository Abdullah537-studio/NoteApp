import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Icon icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          // IconButton(onPressed: (){}, icon: Icon(Icons.search))
          CustomSearchIcon(
            icon: icon,
          )
        ],
      ),
    );
  }
}
