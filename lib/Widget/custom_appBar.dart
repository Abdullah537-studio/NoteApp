import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10, left: 10, bottom: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 18),
          ),
          // IconButton(onPressed: (){}, icon: Icon(Icons.search))
          CustomSearchIcon()
        ],
      ),
    );
  }
}
