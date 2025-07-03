import 'package:flutter/material.dart';
import 'package:silent_moon/widgets/button_with_icon.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: IconButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.black12),
                    ),
                    fixedSize: Size(50, 50),
                  ),
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Welcome Back!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(height: 33),
              ButtonWithIcon(
                text: "CONTINUE WITH FACEBOOK",
                color: Color(0xFF7583CA),
                logoPath: "assets/logos/facebook.svg",
              ),
              ButtonWithIcon(
                text: "CONTINUE WITH GOOGLE",
                color: Colors.white54,
                textColor: Colors.black,
                logoPath: "assets/logos/google.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
