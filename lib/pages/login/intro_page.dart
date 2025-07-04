import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silent_moon/pages/login/login_page.dart';
import 'package:silent_moon/pages/login/signup_page.dart';
import 'package:silent_moon/widgets/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/a/image1.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Silent",

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            letterSpacing: 3,
                          ),
                        ),
                        SizedBox(width: 10),
                        SvgPicture.asset("assets/logo.svg"),
                        SizedBox(width: 10),
                        Text(
                          "Moon",

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/a/intro_signup.svg",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  SizedBox(height: 131),

                  Text(
                    "We are what we do",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 310,

                    child: Text(
                      "Thousand of people are usign silent moon  for smalls meditation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 62),
                  Button(
                    text: "SIGN UP",
                    color: Color(0xFF8E97FD),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  ),
                  SizedBox(height: 44),

                  Text.rich(
                    TextSpan(
                      text: "ALREADY HAVE AN ACCOUNT? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "LOG IN",
                          style: TextStyle(
                            color: Color(0xFF7583CA), // Figma purple
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
