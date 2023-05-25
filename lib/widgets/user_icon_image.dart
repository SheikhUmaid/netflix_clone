import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserImageIcon extends StatelessWidget {
  const UserImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              image: AssetImage('assets/images/thing.jpg'), fit: BoxFit.cover)),
    );
  }
}
