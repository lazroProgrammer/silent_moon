import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    this.textColor = Colors.white,
  });

  final String text;
  final void Function() onPressed;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: const StadiumBorder(),
        minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 63),
        elevation: 0,
      ),
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
