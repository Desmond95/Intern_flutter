//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/rendering.dart';

class OMPage extends StatefulWidget {
  @override
  _OMPageState createState() => _OMPageState();
}

class _OMPageState extends State<OMPage> {
  bool nopassword = true;

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
            'OM',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(children: [
              Container(
                width: 300,
                height: 400,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Number',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      maxLength: 9,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF4D50A),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0x5F0B0F82))),
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 20)),
                    Text(
                      'Amount',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF4D50A),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0x5F0B0F82))),
                      ),
                    ),
                  ],
                ),
              ),
              SquareButton(
                buttonText: 'Pay',
                onPress: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
