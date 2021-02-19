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
    this.padding,
  });

  final IconData prefixIcon, suffixIcon, suffixIcon2;
  final String hint;
  final String labelText;
  final bool passwordhidden;
  final int maxTextLength;
  final Function onPressed;
  final EdgeInsets padding;

  final bool secureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Color(0xFFF4D50A),
        ),
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF4D50A),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x5F0B0F82))),
            labelText: labelText,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            hintText: hint,
            prefixIcon: Icon(
              prefixIcon,
            ),
            suffixIcon: IconButton(
              icon: Icon(passwordhidden
                  ? secureText
                      ? suffixIcon
                      : suffixIcon2
                  : suffixIcon2),
              onPressed: onPressed,
            ),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
          obscureText: passwordhidden,
          maxLength: maxTextLength,
        ),
      ),
    );
  }
}