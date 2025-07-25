import 'package:flutter/material.dart';
import 'package:silent_moon/widgets/audio_list_tile.dart';

class VoiceCollectionWidget extends StatelessWidget {
  const VoiceCollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(tabs: [Tab(text: "MALE VOICE"), Tab(text: "FEMALE VOICE")]),
          SizedBox(height: 20),
          AudioListTile(
            title: "Focus Attention",
            minutes: 10,
            isListened: true,
          ),
          Divider(),
          AudioListTile(title: "Body Scan", minutes: 5),
          Divider(),
          AudioListTile(title: "Making Happiness", minutes: 3),
        ],
      ),
    );
  }
}
