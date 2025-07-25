import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silent_moon/pages/login/main/main_page.dart';
import 'package:silent_moon/widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color.fromARGB(255, 142, 150, 240),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: SvgPicture.asset("assets/a/welcome_screen.svg"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 125),
                  Text(
                    "Hi Afsar, Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "to Silent Moon",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Explore the app, Find some peace of mind to prepare for meditation.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Expanded(child: Container()),
                  Button(
                    text: "GET STARTED",
                    color: Color(0xFFEBEAEC),
                    textColor: Color.fromARGB(255, 34, 36, 43),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          //     builder: (context) => DatetimeSelectionPage(),
                          builder: (context) => MainPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
