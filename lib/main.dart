import 'package:eat_at_ui/views/home/home_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = HomeView.isDarkMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Poppins',
          bodyColor: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      home: const HomeView(),
    );
  }
}
