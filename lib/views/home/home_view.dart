// ignore_for_file: must_be_immutable

import 'package:eat_at_ui/widgets/welcometext/welcome_text.dart';
import 'package:eat_at_ui/widgets/centerview/center_view.dart';
import 'package:eat_at_ui/widgets/navbar/navigation_bar.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF1E1E1E) : Colors.white,
      body: CenterView(
        child: Column(
          children: [
            NavBar(isDarkMode: HomeView.isDarkMode),
            const SizedBox(height: 80),
            const WelcomeText(),
          ],
        ),
      ),
    );
  }
}