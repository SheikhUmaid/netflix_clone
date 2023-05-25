import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/hero_screen.dart';
import 'package:netflix_clone/widgets/home_section.dart';
import 'package:netflix_clone/widgets/home_section_image.dart';
import 'package:netflix_clone/widgets/home_section_text.dart';
import 'package:netflix_clone/widgets/user_icon_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent; // Initial color of AppBar

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll); // Add scroll listener
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      // Update AppBar color based on scroll position
      if (_scrollController.offset > 100) {
        _appBarColor = Colors.black.withOpacity(0.7); // Change to desired color
      } else {
        _appBarColor =
            Colors.transparent; // Change to initial color or another color
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: _appBarColor,
          elevation: 0,
          leading: Image.asset(
            'assets/images/netflix_logo.png',
            height: 80,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  UserImageIcon(),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HeroSection(),
              HomeSection(
                text: 'Trending Now',
              ),
              HomeSection(
                text: 'Oscar Winning Movies',
              ),
              HomeSection(
                text: 'For You',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
