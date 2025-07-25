import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&w=400&q=80',
        ),
        // onBackgroundImageError: (_, __) => Icon(Icons.person, size: 140),
        child: null, // child must be null if using backgroundImage
      ),
    );
  }
}
