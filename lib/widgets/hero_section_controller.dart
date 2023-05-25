import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/hero_section_controller_icon.dart';
import 'package:netflix_clone/widgets/hero_section_controller_play_button.dart';

class HeroSectionController extends StatelessWidget {
  const HeroSectionController({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HeroSectionControllerIconButton(
          text: 'My List',
          icon: Icons.check,
        ),
        HeroSectionControllerPlayButton(),
        HeroSectionControllerIconButton(
          text: 'Info',
          icon: Icons.info_outline,
        ),
      ],
    );
  }
}
