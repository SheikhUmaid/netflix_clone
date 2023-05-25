import 'package:flutter/material.dart';

class HeroSectionControllerIconButton extends StatelessWidget {
  String text;
  IconData? icon;
  HeroSectionControllerIconButton({required this.text, this.icon, Key? key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 12))
      ],
    );
  }
}
