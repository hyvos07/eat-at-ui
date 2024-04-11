import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.isDarkMode});

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 80,
              width: 150,
              child: Image.asset(
                isDarkMode
                    ? 'assets/images/dark_mode.png' // change to dark mode logo
                    : 'assets/images/light_mode.png', // change to light mode logo
              )),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem(title: 'Search'),
              SizedBox(width: 60), // for spacing
              _NavBarItem(title: 'About'),
              SizedBox(width: 40), // for spacing
            ],
          ),
        ],
      ),
    );
  }
}

// Text Widget
class _NavBarItem extends StatelessWidget {
  const _NavBarItem({required this.title});

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
