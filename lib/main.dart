import 'package:fast_shop/screens/home_screen.dart';
import 'package:fast_shop/screens/login.dart';
import 'package:fast_shop/screens/product_detail.dart';
import 'package:fast_shop/screens/sign_up.dart';
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
      theme: Theme.of(context).copyWith(
        primaryColor: Color(0xFF0B0F82),
        focusColor: Color(0xFFF4D50A),
      ),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/product': (context) => ProductDetailPage(),
      },
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
