import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({super.key, required this.title, required this.pngPath});
  final String pngPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(pngPath),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "MEDITATION - 3-10 MIN",
            style: TextStyle(
              color: Color(0xFFA1A4B2),
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
