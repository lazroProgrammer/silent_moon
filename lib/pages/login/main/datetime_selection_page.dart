import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:silent_moon/widgets/button.dart';

class DatetimeSelectionPage extends StatelessWidget {
  const DatetimeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.only(bottom: 15.0, left: 8, right: 8),
                height: 61,
                width: 260,
                child: Text(
                  "What time would you like to meditate?",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: 330,
                child: Text(
                  "Any time you can choose but We recommend first thing in th morning.",
                  style: TextStyle(
                    color: Color(0xFFA1A4B2),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
                height: 212,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 15.0, left: 8, right: 8),
                height: 61,
                width: 260,
                child: Text(
                  "Which day would you like to meditate?",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: 320,
                child: Text(
                  "Everyday is best, but we recommend picking at least five.",
                  style: TextStyle(
                    color: Color(0xFFA1A4B2),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 7; i++)
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF3F414E),
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Button(
                    text: "SAVE",
                    color: Color(0xFF8E97FD),
                    onPressed: () {},
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "NO THANKS",
                    style: TextStyle(
                      color: Color(0xFF3F414E), // Figma purple
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pop();
                          },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
