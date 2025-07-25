import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:silent_moon/pages/login/main/topics_page.dart';
import 'package:silent_moon/widgets/button.dart';
import 'package:silent_moon/widgets/button_with_icon.dart';
import 'package:silent_moon/widgets/text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
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
                    fixedSize: Size(55, 55),
                  ),
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(height: 28),
              Text(
                "Create your account ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(height: 23),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  "OR LOG IN WITH EMAIL",
                  style: TextStyle(
                    color: Color(0xFFA1A4B2),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 0.7,
                  ),
                ),
              ),
              TextFieldWidget(hintText: "Name", isSignup: true),
              TextFieldWidget(hintText: "Email address", isSignup: true),
              TextFieldWidget(
                hintText: "Password",
                isSignup: true,
                isPassword: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: "I have read the ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFFA1A4B2), // Or match Figma
                          ),
                          children: [
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                color: Color(0xFF7583CA), // Figma purple
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    Checkbox(value: false, onChanged: (b) {}),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Button(
                  text: "GET STARTED",
                  color: Color(0xFF8E97FD),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TopicsPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
