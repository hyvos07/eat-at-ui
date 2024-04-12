import 'package:eat_at_ui/widgets/navbar/navbar_logo.dart';

import 'package:flutter/material.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}