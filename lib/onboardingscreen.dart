import 'dart:async';

import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, gotoLoginPage);
  }

  void gotoLoginPage() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D819),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: GestureDetector(
            // onTap: () {
            //   Navigator.pushNamed(context, '/login');
            // },
            child: Image(
              image: AssetImage('images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
