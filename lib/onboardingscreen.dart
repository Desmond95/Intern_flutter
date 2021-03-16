import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, getCurrentUser);
  }

  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  void getCurrentUser() async {
    setState(() {
      showSpinner = true;
    });
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        Navigator.pushNamed(context, '/home', arguments: 0);
        print('User is $user');
        print(loggedInUser.displayName);
        setState(() {
          showSpinner = false;
        });
      } else {
        Navigator.of(context).pushReplacementNamed('/login');
        print('User is not logged in');
        setState(() {
          showSpinner = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    startTime();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D819),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(70.0),
            child: GestureDetector(
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
