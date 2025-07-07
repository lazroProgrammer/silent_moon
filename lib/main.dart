import 'package:flutter/material.dart';
import 'package:silent_moon/pages/login/intro_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SvgCache.preload('assets/a/focus.svg');
  // await SvgCache.preload("assets/logo.svg");
  // await SvgCache.preload("assets/a/intro_signup.svg");
  // await SvgCache.preload("assets/logos/facebook.svg");
  // await SvgCache.preload("assets/logos/google.svg");
  // await SvgCache.preload("assets/a/apple.svg");
  // await SvgCache.preload("assets/a/relax.svg");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
