// ignore_for_file: deprecated_member_use

import 'package:eat_at_ui/widgets/homepage/welcome_text.dart';
import 'package:eat_at_ui/widgets/homepage/welcome_text_mobile.dart';
import 'package:eat_at_ui/widgets/homepage/welcome_text_tablet.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ScreenTypeLayout(
            mobile: const WelcomeTextMobile(),
            tablet: const WelcomeTextTablet(),
            desktop: const WelcomeText(),
          )
        ],
      ),
    );
  }
}