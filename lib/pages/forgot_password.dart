//import 'dart:html';

//import 'package:fast_shop/testt.dart';
import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/rendering.dart';
import 'package:fast_shop/components/inputfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool passwordVisible = true;
  // bool passwordVisible1 = true;
  // bool passwordVisible2 = true;
  // bool passwordVisible3 = true;
  // bool passwordToggle1 = true;
  // bool passwordToggle2 = true;
  // bool passwordToggle3 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          toolbarHeight: 80,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Forgot Password',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your Email of recuperation',
                      style: kLabelTextStyleBlue,
                    ),
                    InputField(
                      hint: 'Email address',
                      labelText: 'Your Email',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 20)),
                    SquareButton(
                      buttonText: 'Done',
                      onPress: () {
                        var dialogue = showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  content: Text(
                                    'A link have been sent to your Email box. If you don\'t see it click on \'RESUBMIT\'.',
                                    textAlign: TextAlign.center,
                                    style: kLabelTextStyleBlue,
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Ok'),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/login');
                                      },
                                    ),
                                    // Buttom(
                                    //   child: Text('Ok'),
                                    //   onPressed: () {
                                    //     Navigator.pushNamed(context, '/login');
                                    //   },
                                    // )
                                  ],
                                ));
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
