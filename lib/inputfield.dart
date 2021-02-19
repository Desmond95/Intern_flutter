import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({
    @required this.prefixIcon,
    this.suffixIcon,
    @required this.hint,
    @required this.labelText,
    @required this.passwordhidden,
    this.maxTextLength,
    this.onPressed,
    this.suffixIcon2,
    this.secureText,
  });

  final IconData prefixIcon, suffixIcon, suffixIcon2;
  final String hint;
  final String labelText;
  final bool passwordhidden;
  final int maxTextLength;
  final Function onPressed;

  bool secureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        focusColor: Color(0xFF0B0F82),
        labelStyle: TextStyle(
            // color: Color(0xFF0B0F82),
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 17),
        hintText: hint,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: IconButton(
          icon: Icon(passwordhidden
              ? secureText
                  ? Icons.visibility
                  : Icons.visibility_off
              : null),
          onPressed: onPressed,
        ),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
      obscureText: passwordhidden,
      maxLength: maxTextLength,
    );
  }
}
