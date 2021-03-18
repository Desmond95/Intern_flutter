import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = true;
  bool passwordVisible1 = true;
  bool passwordToggle = true;
  bool passwordToggle1 = true;

  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String userEmail, userPassword, userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
                  child: Hero(
                    tag: 'logo',
                    child: Image(
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    'Let\'s get started',
                    style: kLabelTextStyleBlue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('Create Account', style: TextStyle()),
                ),
                InputField(
                  onChanged: (value) {
                    userName = value;
                  },
                  prefixIcon: Icons.account_box_outlined,
                  hint: 'Full name',
                  labelText: 'Full Name',
                  passwordhidden: false,
                  secureText: false,
                  padding: const EdgeInsets.only(top: 10),
                ),
                InputField(
                  onChanged: (value) {
                    userEmail = value;
                  },
                  prefixIcon: Icons.email_outlined,
                  hint: 'Enter Email Address',
                  labelText: 'Email',
                  passwordhidden: false,
                  secureText: false,
                  padding: const EdgeInsets.only(top: 10),
                ),
                InputField(
                  prefixIcon: Icons.lock_outline,
                  hint: 'Enter Password',
                  labelText: 'Password',
                  passwordhidden: passwordVisible1,
                  suffixIcon: Icons.visibility,
                  suffixIcon2: Icons.visibility_off,
                  secureText: passwordToggle1,
                  padding: const EdgeInsets.only(top: 10),
                  onPressed: () {
                    setState(() {
                      passwordToggle1 = !passwordToggle1;
                      passwordVisible1 = !passwordVisible1;
                    });
                  },
                ),
                InputField(
                  onChanged: (value) {
                    userPassword = value;
                  },
                  prefixIcon: Icons.lock_outline,
                  hint: 'Confirm Password',
                  labelText: 'Confirm Password',
                  passwordhidden: passwordVisible,
                  suffixIcon: Icons.visibility,
                  suffixIcon2: Icons.visibility_off,
                  secureText: passwordToggle,
                  padding: const EdgeInsets.only(top: 10),
                  onPressed: () {
                    setState(() {
                      passwordToggle = !passwordToggle;
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                SquareButton(
                    buttonText: 'Sign Up',
                    onPress: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: userEmail, password: userPassword);
                        if (newUser != null) {
                          Navigator.pushNamed(context, '/home', arguments: 0);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Have an account?',
                        style: TextStyle(color: Color(0xFF9098B1)),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign In', style: kLabelTextStyleYellow),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
