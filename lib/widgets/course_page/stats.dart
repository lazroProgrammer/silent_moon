import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Map<String, dynamic> iconMapping = {
  "love": {
    "icon": Icon(FontAwesomeIcons.solidHeart, color: Color(0xFFFF84A2)),
    "word": "Favorites",
  },
  "headphones": {
    "icon": Icon(FontAwesomeIcons.headphones, color: Color(0xFF7FD2F2)),
    "word": "Listening",
  },
};

class Stats extends StatelessWidget {
  const Stats({super.key, required this.number, required this.type});
  final int number;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 8),
          child: iconMapping[type]["icon"],
        ),

        Text(
          "$number ${iconMapping[type]["word"]}",
          style: TextStyle(
            color: Color(0xFFA1A4B2),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
