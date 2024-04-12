import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  final Widget child;

  const CenterView({super.key, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1450),
        child: child,
      )
    );
  }
}