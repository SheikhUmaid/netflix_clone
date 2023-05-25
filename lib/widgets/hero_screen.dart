import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/hero_section_controller.dart';
import 'package:netflix_clone/widgets/hero_section_parameters.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.25,
          // height: 500,
          width: double.infinity,
          child: Image.asset(
            'assets/images/heroImage1.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeroMovieParamerter(
                          text: 'Thriller',
                        ),
                        HeroMovieParamerter(
                          text: 'Comedy',
                        ),
                        HeroMovieParamerter(
                          text: 'Drama',
                        ),
                      ],
                    ),
                    HeroSectionController()
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
