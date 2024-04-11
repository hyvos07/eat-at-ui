import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Mau Makan Apa Hari Ini?",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}