import 'package:eat_at_ui/widgets/navbar/navbar_logo.dart';
import 'package:eat_at_ui/widgets/navbar/navbar_item.dart';

import 'package:flutter/material.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Search'),
              SizedBox(width: 60), // for spacing
              NavBarItem(title: 'About'),
              SizedBox(width: 40), // for spacing
            ],
          ),
        ],
      ),
    );
  }
}