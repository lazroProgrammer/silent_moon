import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.isSignup = false,
    this.isPassword = false,
  });
  final String hintText;
  final bool isSignup;
  final bool isPassword;
  final bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true, // enables background color
          fillColor: Colors.grey[300],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 22,
            horizontal: 16,
          ), // control height/padding
          hintText: hintText,
          suffixIcon:
              (!isPassword && !isSignup)
                  ? null
                  : isPassword
                  ? IconButton(
                    onPressed: () {
                      // isHidden.toggle();
                    },
                    icon:
                    // Obx(() {
                    // return (isHidden.obj.value)
                    Icon(FontAwesomeIcons.solidEye),
                  )
                  : isValid
                  ? Icon(FontAwesomeIcons.check, color: Colors.green)
                  : Icon(FontAwesomeIcons.xmark, color: Colors.red),

          // }),
        ),
      ),
    );
  }
}
