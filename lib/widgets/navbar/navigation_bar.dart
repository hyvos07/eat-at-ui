// ignore_for_file: deprecated_member_use

import 'package:eat_at_ui/widgets/navbar/navbar_tablet_desktop.dart';
import 'package:eat_at_ui/widgets/navbar/navbar_mobile.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavBarMobile(),
      tablet: const NavBarTabletDesktop(),
    );
  }
}