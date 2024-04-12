// ignore_for_file: deprecated_member_use

import 'package:eat_at_ui/widgets/homepage/welcome_text.dart';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          WelcomeText(),
        ],
      ),
    );
  }
}