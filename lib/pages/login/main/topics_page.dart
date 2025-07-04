import 'package:flutter/material.dart';
import 'package:silent_moon/core/topic.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: ListView(
            children: [
              SizedBox(height: 50),
              Text(
                "What Brings you",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              Text(
                "to Silent Moon?",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 8),
              Text(
                "choose a topic to focus on:",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 26),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // spacing: 21,
                children: [
                  Expanded(
                    child: Column(
                      spacing: 21,
                      children: [
                        for (int i = 0; i < topics.length; i += 2)
                          Image.asset(topics[i].picPath),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      spacing: 21,
                      children: [
                        for (int i = 1; i < topics.length; i += 2)
                          Image.asset(topics[i].picPath), // odd indices
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<double> heights = [210, 0, 168, 0, 210, 0, 210, 0];

List<Topic> topics = [
  Topic(
    text: "Reduce Stress",
    color: Color(0xFF808AFF),
    picPath: "assets/topics/topic1.png",
  ),
  Topic(
    text: "Improve Performance",
    color: Color(0xFFF05D48),
    picPath: "assets/topics/topic2.png",
  ),
  Topic(
    text: "Increase Happiness",
    color: Color.fromARGB(255, 255, 173, 135),
    picPath: "assets/topics/topic3.png",
  ),
  Topic(
    text: "Reduce Anxiety",
    color: Color(0xFFFFCF86),
    picPath: "assets/topics/topic4.png",
  ),
  Topic(
    text: "Personal Growth",
    color: Color(0xFF6CB28E),
    picPath: "assets/topics/topic5.png",
  ),
  Topic(
    text: "Better Sleep",
    color: Color(0xFF3F414E),
    picPath: "assets/topics/topic6.png",
  ),
  Topic(
    text: "Meditation",
    color: Color(0xFF808AFF),
    picPath: "assets/topics/topic7.png",
  ),
  Topic(
    text: "Better Breaks",
    color: Color(0xFFD9A5B5),
    picPath: "assets/topics/topic8.png",
  ),
];
