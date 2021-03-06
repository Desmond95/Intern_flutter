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
  //bool passwordVisible = true;
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
          toolbarHeight: 80,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Change Password',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Container(
                //padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   'Previous Password',
                    //   style: kLabelTextStyleBlue,
                    // ),
                    InputField(
                      prefixIcon: Icons.lock_outline,
                      hint: 'Enter Password',
                      labelText: 'Previous Password',
                      passwordhidden: passwordVisible1,
                      suffixIcon: Icons.visibility,
                      suffixIcon2: Icons.visibility_off,
                      secureText: passwordToggle1,
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      onPressed: () {
                        setState(() {
                          passwordToggle1 = !passwordToggle1;
                          passwordVisible1 = !passwordVisible1;
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    // Text(
                    //   'New Password',
                    //   style: kLabelTextStyleBlue,
                    // ),
                    InputField(
                      prefixIcon: Icons.lock_outline,
                      hint: 'Enter Password',
                      labelText: 'New Password',
                      passwordhidden: passwordVisible2,
                      suffixIcon: Icons.visibility,
                      suffixIcon2: Icons.visibility_off,
                      secureText: passwordToggle2,
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      onPressed: () {
                        setState(() {
                          passwordToggle2 = !passwordToggle2;
                          passwordVisible2 = !passwordVisible2;
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    // Text(
                    //   'Confirm ',
                    //   style: kLabelTextStyleBlue,
                    // ),
                    InputField(
                      prefixIcon: Icons.lock_outline,
                      hint: 'Enter Password',
                      labelText: 'Confirm',
                      passwordhidden: passwordVisible3,
                      suffixIcon: Icons.visibility,
                      suffixIcon2: Icons.visibility_off,
                      secureText: passwordToggle3,
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      onPressed: () {
                        setState(() {
                          passwordToggle3 = !passwordToggle3;
                          passwordVisible3 = !passwordVisible3;
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    SquareButton(
                      buttonText: 'Save',
                      onPress: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
