import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    super.key,
    required this.text,
    required this.color,
    required this.logoPath,
    this.textColor = Colors.white,
  });

  final String text;
  final String logoPath;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: StadiumBorder(side: BorderSide(color: Colors.black12)),
          minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 63),
          elevation: 0,
        ),
        onPressed: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SvgPicture.asset(logoPath),
            ),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: textColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
