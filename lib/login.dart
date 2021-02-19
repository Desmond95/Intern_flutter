import 'package:fast_shop/inputfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordToggle = false;
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
              Text(
                'Welcome to Dovv',
              ),
              Text('Sign in to continue', style: TextStyle()),
              SizedBox(
                height: 16,
              ),
              InputField(
                prefixIcon: Icons.lock,
                hint: 'Enter Password',
                labelText: 'Paswword',
                passwordhidden: passwordVisible,
                secureText: passwordToggle,
                onPressed: () {
                  setState(() {
                    passwordToggle = !passwordToggle;
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
