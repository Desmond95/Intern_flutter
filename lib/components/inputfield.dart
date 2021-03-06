import 'dart:ui';

import 'package:fast_shop/components/constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField(
      {this.prefixIcon,
      this.suffixIcon,
      @required this.hint,
      @required this.labelText,
      @required this.passwordhidden,
      this.maxTextLength,
      this.onPressed,
      this.suffixIcon2,
      this.secureText,
      this.padding,
      this.textInputType,
      this.onChanged,
      this.textInputAction,
      this.controller,
      this.errorText,
      this.onSubmit,
      this.value});

  final IconData prefixIcon, suffixIcon, suffixIcon2;
  final String hint, errorText;
  final String labelText, value;
  final bool passwordhidden;
  final int maxTextLength;
  final Function onPressed, onChanged, onSubmit;
  final EdgeInsets padding;
  final TextInputType textInputType;
  final TextEditingController controller;
  final TextInputAction textInputAction;
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
          onSubmitted: onSubmit,
          controller: controller,
          textInputAction: textInputAction,
          scrollPadding: EdgeInsets.zero,
          selectionHeightStyle: BoxHeightStyle.max,
          decoration: InputDecoration(
            errorText: errorText,
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
              color: kIconColor,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                passwordhidden
                    ? secureText
                        ? suffixIcon
                        : suffixIcon2
                    : suffixIcon2,
                color: kIconColor,
              ),
              onPressed: onPressed,
            ),
            border: OutlineInputBorder(),
          ),
          keyboardType: textInputType,
          obscureText: passwordhidden,
          maxLength: maxTextLength,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
