import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silent_moon/widgets/stats.dart';
import 'package:silent_moon/widgets/voice_collection_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SvgPicture.asset("assets/a/happy_sun.svg"),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "Happy Morning",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
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
            Text(
              "Pick a Narrator",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            VoiceCollectionWidget(),
          ],
        ),
      ),
    );
  }
}
