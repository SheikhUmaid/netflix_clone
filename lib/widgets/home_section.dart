import 'package:flutter/material.dart';
import 'package:netflix_clone/data/prev_images.dart';
import 'package:netflix_clone/widgets/home_section_image.dart';
import 'package:netflix_clone/widgets/home_section_text.dart';

class HomeSection extends StatelessWidget {
  String text;
  HomeSection({required this.text, Key? key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              HomeSectionText(text: text),
            ],
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: PrevImages().prevImageLinks.length,
              itemBuilder: (BuildContext context, int index) {
                return HomeSectionImage(
                  imageUrl: PrevImages().prevImageLinks[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
