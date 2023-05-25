import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeroSectionControllerPlayButton extends StatelessWidget {
  const HeroSectionControllerPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(0, 2),
                blurRadius: 6)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.play_arrow,
            color: Colors.black,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'Play',
            style: TextStyle(color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
