import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            'Profile',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.pink,
                      ),
                      Text(
                        'Ornella',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     suffixIcon: Icon(
                //       Icons.arrow_drop_down_outlined,
                //       size: 30,
                //     ),
                //     prefixIcon: Icon(
                //       Icons.gesture_rounded,
                //       color: Color(0xFFF4D50A),
                //     ),
                //     // helperText: 'Please',
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Color(0xFFF4D50A),
                //         width: 1,
                //       ),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Color(0x5F0B0F82))),
                //   ),
                // ),
                Row(
                  children: [
                    Icon(
                      Icons.gesture_rounded,
                      color: Color(0xFFF4D50A),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Gender',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Birthday',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30,
                      ),
                    )
                  ],
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'Email',
                //     prefixIcon: Icon(
                //       Icons.mail_outline_outlined,
                //       color: Color(0xFFF4D50A),
                //     ),
                //     // helperText: 'Please',
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Color(0xFFF4D50A),
                //         width: 1,
                //       ),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Color(0x5F0B0F82))),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addaddress');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline_outlined,
                        color: Color(0xFFF4D50A),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Email',
                          style: kLabelTextStyleBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                // Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 10)),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'Phone Number',
                //     prefixIcon: Icon(
                //       Icons.phone_android_outlined,
                //       color: Color(0xFFF4D50A),
                //     ),
                //     // helperText: 'Please',
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Color(0xFFF4D50A),
                //         width: 1,
                //       ),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Color(0x5F0B0F82))),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/payement');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_android_outlined,
                        color: Color(0xFFF4D50A),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Phone Number',
                          style: kLabelTextStyleBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/changepassword');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline,
                        color: Color(0xFFF4D50A),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Change password',
                          style: kLabelTextStyleBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 10)),
                SquareButton(
                  buttonText: 'Save',
                  onPress: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
            ),
            // child: Scaffold(
            //   appBar: AppBar(
            //     backgroundColor: Colors.white,
            //     elevation: 1,
            //     toolbarHeight: 80,
            //     iconTheme: IconThemeData(color: kIconColor),
            //     title: Text(
            //       'Account',
            //       style: kLabelTextStyleBlue,
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
