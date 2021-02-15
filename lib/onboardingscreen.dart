import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D819),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Image(
            image: AssetImage('images/logo.png'),
          ),
        ),
      ),
    );
  }
}
