import 'package:flutter/material.dart';
import 'package:silent_moon/widgets/genre_card.dart';
import 'package:silent_moon/widgets/home_page/collection_card.dart';
import 'package:silent_moon/widgets/svg_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
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
                      SvgWidget(svgPath: "assets/logo.svg"),
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
                Text(
                  "Good Morning, Afsar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                Text(
                  "We Wish you have a good day",
                  style: TextStyle(
                    color: Color(0xFFA1A4B2),
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  spacing: 20,
                  children: [
                    CollectionCard(
                      title: "Basics",
                      category: "COURSE",
                      color: Color(0xFF8E97FD),
                      isDark: true,
                      pngPath: "assets/a/apple.png",
                    ),
                    CollectionCard(
                      title: "Relaxation",
                      category: "MUSIC",
                      color: Color(0xFFFFC97E),
                      isDark: false,
                      pngPath: "assets/a/relax.png",
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: 95,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF3F414E),
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
                            "Daily Thought",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "MEDITATION - 3-10 MIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        icon: Icon(Icons.play_arrow),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Recomended for you",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                ),
                // GenreCard(),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:
                        (context, index) => GenreCard(
                          title: "Focus",
                          pngPath:
                              "assets/a/${index.isOdd ? "focus" : "happiness"}.png",
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
