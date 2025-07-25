import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silent_moon/widgets/course_page/stats.dart';
import 'package:silent_moon/widgets/voice_collection_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.amber[700]!,
                    Colors.black.withOpacity(
                      0.7,
                    ), // Adjust opacity for desired vignette
                  ],
                ),
              ),
              child: SvgPicture.asset(
                "assets/a/happy_sun.svg",
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Happy Morning",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "COURSE",
                      style: TextStyle(
                        color: Color(0xFFA1A4B2),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    width: 330,
                    child: Text(
                      "Ease the mind into a restful night's sleep  with these deep, ambient tones.",
                      style: TextStyle(
                        color: Color(0xFFA1A4B2),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stats(number: 24503, type: "love"),
                      Stats(number: 24503, type: "headphones"),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Pick a Narrator",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            VoiceCollectionWidget(),
          ],
        ),
      ),
    );
  }
}
