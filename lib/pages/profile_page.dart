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
            padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 125,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/profil 3.jpg',
                        ),
                        radius: 50,
                      ),
                      Text(
                        'Ornella',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  title: Text(
                    'Gender',
                    style: kLabelTextStyleBlue,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 30,
                  ),
                ),
                // Row(
                //   children: [
                //     Icon(
                //       Icons.arrow_forward_ios_outlined,
                //       color: Color(0xFFF4D50A),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.all(20),
                //       child: Text(
                //         'Gender',
                //         style: kLabelTextStyleBlue,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                //       child: Icon(
                //         Icons.keyboard_arrow_right_outlined,
                //         size: 30,
                //       ),
                //     )
                //   ],
                // ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_today_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  title: Text(
                    'Birthday',
                    style: kLabelTextStyleBlue,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addaddress');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Email',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/payement');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Phone Number',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/change_password');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Change password',
                      style: kLabelTextStyleBlue,
                    ),
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
          ),
        ),
      ),
    );
  }
}
