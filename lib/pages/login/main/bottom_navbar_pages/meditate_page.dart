import 'package:flutter/material.dart';

class MeditatePage extends StatelessWidget {
  const MeditatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Meditate",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
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
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: ListView.builder(
                    itemCount: 0,
                    itemBuilder: (context, index) => Placeholder(),
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
