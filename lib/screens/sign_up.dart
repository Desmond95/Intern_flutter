import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
            children: [
              Image(
                image: AssetImage('images/logo.png'),
              ),
              Text(
                'Let s get started',
              ),
              Text('Create Account', style: TextStyle()),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+237 656 200 309',
                    style: TextStyle(
                      color: Colors.teal.shade100,
                      fontFamily: 'Fruances',
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                color: Color(0xFFF6D819),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
