import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final Icon icon;
  const CustomSearchIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(child: IconButton(onPressed: () {}, icon: icon)),
    );
  }
}
