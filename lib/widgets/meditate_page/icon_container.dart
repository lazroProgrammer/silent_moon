import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.isActive,
    required this.onPress,
  });

  final bool isActive;
  final IconData icon;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: isActive ? Color(0xFF8E97FD) : Color(0xFFA0A3B1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(icon, size: 28, color: Colors.white),
          ),
          Text(text, style: TextStyle(color: isActive ? null : Colors.grey)),
        ],
      ),
    );
  }
}
