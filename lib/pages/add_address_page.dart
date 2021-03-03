//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/rendering.dart';

class AddAddressPage extends StatefulWidget {
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
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
            'Add Address',
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
                      'First Name',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        // helperText: 'Please',
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    Text(
                      'Last Name',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    Text(
                      'Street Address',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF4D50A),
                            width: 1,
                          ),
                        ),
                        suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0x5F0B0F82))),
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    Text(
                      'Streeet Address 2 (Optional)',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    Text(
                      'City',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    Text(
                      'State/Province/Region',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    Text(
                      'Zip Code',
                      style: kLabelTextStyleBlue,
                    ),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      maxLength: 4,
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                    Text(
                      'Phone Number',
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
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    SquareButton(
                      buttonText: 'Add Address',
                      onPress: () {
                        Navigator.pushNamed(context, '/home');
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
