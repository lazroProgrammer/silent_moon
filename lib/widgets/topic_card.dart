import 'package:flutter/material.dart';
import 'package:silent_moon/core/topic.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.height,
    required this.width,
    required this.topic,
  });
  final double height;
  final double width;
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: topic.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Image.asset(topic.picPath),
          //  Text(topic.text)
        ],
      ),
    );
  }
}
