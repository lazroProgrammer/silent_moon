import 'package:flutter/material.dart';
import 'package:silent_moon/pages/login/main/bottom_navbar_pages/course_page.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    super.key,
    required this.title,
    required this.category,
    required this.color,
    required this.isDark,
    required this.pngPath,
  });
  final String pngPath;
  final String title;
  final String category;
  final Color color;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisSize: MainAxisSize.max,
              children: [Image.asset(pngPath)],
            ),
          ),

          Text(
            title,
            style: TextStyle(
              color: isDark ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            category,
            style: TextStyle(
              color: isDark ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),

          Container(
            padding: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: Row(
              spacing: 20,
              children: [
                Text(
                  "3-10 MIN",
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CoursePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isDark ? Color(0xFFEBEAEC) : Color(0xFF3F414E),

                    shape: const StadiumBorder(),
                    fixedSize: Size(85, 35),
                    elevation: 0,
                  ),
                  child: Text(
                    "START",
                    style: TextStyle(
                      color: isDark ? Colors.black : Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
