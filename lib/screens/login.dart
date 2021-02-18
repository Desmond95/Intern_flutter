import 'package:fast_shop/component/constant.dart';
import 'package:fast_shop/component/inputfield.dart';
import 'package:fast_shop/component/square_button.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 100, right: 100),
                    child: Image(
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Welcome to Dovv',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Sign in to continue',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              InputField(
                prefixIcon: Icons.email_outlined,
                hint: 'Enter Email Address',
                labelText: 'Email',
                passwordhidden: !passwordVisible,
              ),
              InputField(
                prefixIcon: Icons.lock_outline,
                hint: 'Enter Password',
                labelText: 'Password',
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
              SquareButton(
                buttonText: 'Sign In',
                onPress: () {
                  setState(() {
                    Navigator.pushNamed(context, '/home');
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Forgot Password?',
                      style: kLabelTextStyleYellow,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Color(0xFF9098B1)),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Register', style: kLabelTextStyleYellow),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
