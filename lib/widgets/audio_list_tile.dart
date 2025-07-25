import 'package:flutter/material.dart';

class AudioListTile extends StatelessWidget {
  const AudioListTile({
    super.key,
    required this.title,
    required this.minutes,
    this.isListened = false,
  });
  final String title;
  final int minutes;
  final bool isListened;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: isListened ? Color(0xFF8E97FD) : Colors.transparent,
          shape: BoxShape.circle,
          border: isListened ? null : Border.all(color: Color(0xFFA1A4B2)),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.play_arrow_rounded,
            color: isListened ? Colors.white : Color(0xFFA1A4B2),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      subtitle: Text(
        "$minutes MIN",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
      ),
    );
  }
}
