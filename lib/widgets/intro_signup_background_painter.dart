import 'package:flutter/material.dart';

class IntroSignupBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()..color = Color.fromARGB(255, 255, 153, 0);
    final path1 = Path();
    // Construct path1 commands here based on SVG (using size scaling if needed)

    canvas.drawPath(path1, paint1);

    final paint2 = Paint()..color = Color.fromARGB(255, 248, 145, 0);
    final path2 = Path();
    // Construct path2 commands here

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
