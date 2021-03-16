import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

int data = 1;

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  bool passwordToggle = true;
  bool passwordVisible = true;

  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String userEmail, userPassword;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 70, right: 70),
                        child: Hero(
                          tag: 'logo',
                          child: Image(
                            image: AssetImage('images/logo.png'),
                          ),
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
                    textInputType: TextInputType.emailAddress,
                    onChanged: (value) {
                      userEmail = value;
                    },
                    prefixIcon: Icons.email_outlined,
                    hint: 'Enter Email Address',
                    labelText: 'Email',
                    passwordhidden: false,
                    padding: const EdgeInsets.only(left: 0, right: 0, top: 20),
                  ),
                  InputField(
                    onChanged: (value) {
                      userPassword = value;
                    },
                    prefixIcon: Icons.lock_outline,
                    hint: 'Enter Password',
                    labelText: 'Password',
                    passwordhidden: passwordVisible,
                    suffixIcon: Icons.visibility,
                    suffixIcon2: Icons.visibility_off,
                    secureText: passwordToggle,
                    padding: const EdgeInsets.only(left: 0, right: 0, top: 20),
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
                    onPress: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: userEmail, password: userPassword);
                        if (user != null) {
                          Navigator.pushNamed(context, '/home', arguments: 0);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                        setState(() {
                          showSpinner = false;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot_password');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Forgot Password?',
                            style: kLabelTextStyleYellow,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'Don\'t have an account?',
                              style: TextStyle(color: Color(0xFF9098B1)),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Register',
                                    style: kLabelTextStyleYellow),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
