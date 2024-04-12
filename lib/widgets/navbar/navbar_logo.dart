import 'package:eat_at_ui/views/home/home_view.dart';

import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset(
        HomeView.isDarkMode
          ? 'assets/images/dark_mode.png' // change to dark mode logo
          : 'assets/images/light_mode.png', // change to light mode logo
      )
    );
  }
}