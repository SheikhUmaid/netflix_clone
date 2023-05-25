import 'package:flutter/material.dart';

class HomeSectionText extends StatelessWidget {
  String text;
  HomeSectionText({required this.text, super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
