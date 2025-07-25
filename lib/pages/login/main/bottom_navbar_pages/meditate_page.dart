import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:silent_moon/widgets/meditate_page/icon_container.dart';
import 'package:silent_moon/widgets/meditate_page/play_container.dart';

const List<IconData> icons = [
  FontAwesomeIcons.algolia,
  FontAwesomeIcons.heart,
  FontAwesomeIcons.faceFrown,
  FontAwesomeIcons.moon,
  FontAwesomeIcons.babyCarriage,
];
const List<String> texts = ["All", "Romantic", "Anxious", "Sleep", "Kids"];

class MeditatePage extends StatefulWidget {
  const MeditatePage({super.key});

  @override
  State<MeditatePage> createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  int iconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 20, right: 20),

                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Meditate",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 32, right: 32),
                  child: Text(
                    "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA1A4B2),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 0,
                  child: ListView.builder(
                    itemCount: 0,
                    itemBuilder: (context, index) => Placeholder(),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icons.length,
                    itemBuilder:
                        (context, index) => IconContainer(
                          icon: icons[index],
                          text: texts[index],
                          isActive: index == iconIndex,
                          onPress: () {
                            setState(() {
                              iconIndex = index;
                            });
                          },
                        ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: PlayContainer(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 20,
                          children: [
                            Container(
                              height: 200,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              height: 200,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              height: 180,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.cyan,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 20,
                          children: [
                            Container(
                              height: 160,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.lightBlue,
                              ),
                            ),
                            Container(
                              height: 260,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.amber,
                              ),
                            ),
                            Container(
                              height: 160,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
