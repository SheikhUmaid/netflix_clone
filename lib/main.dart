import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/home_screen.dart';
import 'package:netflix_clone/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const SplashScreen(),
        routes: {
          '/home': (context) => const HomePage(),
        });
  }
}
