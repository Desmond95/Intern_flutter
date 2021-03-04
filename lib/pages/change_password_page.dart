//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/rendering.dart';
import 'package:fast_shop/components/inputfield.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool passwordVisible1 = true;
  bool passwordVisible2 = true;
  bool passwordVisible3 = true;
  bool passwordToggle1 = true;
  bool passwordToggle2 = true;
  bool passwordToggle3 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Change Password',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InputField(
                  prefixIcon: Icons.lock_outline,
                  hint: 'Enter Password',
                  labelText: 'Old Password',
                  passwordhidden: passwordVisible1,
                  suffixIcon: Icons.visibility,
                  suffixIcon2: Icons.visibility_off,
                  secureText: passwordToggle1,
                  padding: const EdgeInsets.only(top: 20),
                  onPressed: () {
                    setState(() {
                      passwordToggle1 = !passwordToggle1;
                      passwordVisible1 = !passwordVisible1;
                    });
                  },
                ),
                InputField(
                  prefixIcon: Icons.lock_outline,
                  hint: 'Enter Password',
                  labelText: 'New Password',
                  passwordhidden: passwordVisible2,
                  suffixIcon: Icons.visibility,
                  suffixIcon2: Icons.visibility_off,
                  secureText: passwordToggle2,
                  padding: const EdgeInsets.only(top: 20),
                  onPressed: () {
                    setState(() {
                      passwordToggle2 = !passwordToggle2;
                      passwordVisible2 = !passwordVisible2;
                    });
                  },
                ),
                InputField(
                  prefixIcon: Icons.lock_outline,
                  hint: 'Enter Password',
                  labelText: 'Re-enter Password',
                  passwordhidden: passwordVisible3,
                  suffixIcon: Icons.visibility,
                  suffixIcon2: Icons.visibility_off,
                  secureText: passwordToggle3,
                  padding: const EdgeInsets.only(top: 20),
                  onPressed: () {
                    setState(() {
                      passwordToggle3 = !passwordToggle3;
                      passwordVisible3 = !passwordVisible3;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                SquareButton(
                  buttonText: 'Save',
                  onPress: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
