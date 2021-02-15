import 'package:flutter/material.dart';

import 'onboardingscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          // scaffoldBackgroundColor: Color(0xFFF6D819),
          ),
      routes: {},
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
