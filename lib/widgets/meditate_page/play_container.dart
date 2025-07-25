import 'package:flutter/material.dart';

class PlayContainer extends StatelessWidget {
  const PlayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 95,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFECD3C2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daily Calm",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "APR 30 - PAISE PRACTICE",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Color(0xFF3F414E)),
            icon: Icon(Icons.play_arrow, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
