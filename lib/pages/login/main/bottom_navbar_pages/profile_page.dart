import 'package:flutter/material.dart';
import 'package:silent_moon/widgets/profile_picture.dart';

class MePage extends StatelessWidget {
  const MePage({super.key});

  // bool notification = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ProfilePicture(),
          // child: CircleAvatar(radius: 70, child: Icon(Icons.person, size: 110)),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Text(
              "jack watson",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("example@gmail.com", style: TextStyle(fontSize: 16)),
            // Text("${usr?.email}"),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          // onPressed: () => Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => UpdateProfileScreen())),
          style: ElevatedButton.styleFrom(
            // backgroundColor: (dark) ? Colors.blue[900] : Colors.blue[100],
            backgroundColor: Colors.blue[100],
            side: BorderSide.none,
            shape: const StadiumBorder(),
          ),
          child: const Text("Edit Profile"),
        ),
        const SizedBox(height: 30),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.person, size: 30),
          title: const Text('profile', style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings, size: 30),
          title: const Text('Settings', style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.text_snippet_rounded, size: 30),
          title: const Text('About us', style: TextStyle(fontSize: 18)),
          onTap: () {
            // navigateWithFade(AboutPage());
          },
        ),

        ListTile(
          leading: const Icon(Icons.exit_to_app, size: 30),
          title: const Text('logout', style: TextStyle(fontSize: 18)),
          onTap: () {},
        ),
      ],
    );
  }
}
