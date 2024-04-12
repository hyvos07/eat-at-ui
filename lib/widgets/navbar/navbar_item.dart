import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}