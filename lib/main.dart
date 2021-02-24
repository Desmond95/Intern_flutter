import 'package:fast_shop/pages/home_page.dart';
import 'package:fast_shop/pages/login.dart';
import 'package:fast_shop/pages/notification_activities_page.dart';
import 'package:fast_shop/pages/notification_feed_page.dart';
import 'package:fast_shop/pages/notification_offer_page.dart';
import 'package:fast_shop/pages/notification_page.dart';
import 'package:fast_shop/pages/products_page.dart';
import 'package:fast_shop/pages/sign_up.dart';
import 'package:fast_shop/screens/cart_screen.dart';
import 'package:fast_shop/screens/offer_screen.dart';
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
        primaryColor: Color(0xFFF4D50A),
        focusColor: Color(0xFF0B0F82),
      ),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/offer': (context) => OfferScreen(),
        '/notification': (context) => NotificationPage(),
        '/notification_activities': (context) => NotificationActivitiesPage(),
        '/feed': (context) => NotificationFeedPage(),
        '/notification_offer': (context) => NotificationOfferPage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartScreen(),
      },
      home: Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
