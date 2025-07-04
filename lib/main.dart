import 'package:flutter/material.dart';
import 'package:silent_moon/pages/login/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(
      //     0xFFE5E5E5,
      //   ), // sets background color for Scaffold
      //   brightness: Brightness.light, // ensures it's light theme
      // ),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFAF8F6),
        fontFamily: 'YourFontHere', // match Figma font if custom
      ),
      home: IntroPage(),
    );
  }
}
