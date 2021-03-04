import 'package:fast_shop/components/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/rendering.dart';

class AddAddressPage extends StatefulWidget {
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  bool passwordVisible = false;

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
            padding: EdgeInsets.all(30),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputField(
                      hint: 'Fist Name',
                      labelText: 'First Name',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    InputField(
                      hint: 'Last Name',
                      labelText: 'Last Name',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    InputField(
                      hint: 'Street Address',
                      labelText: 'Street Adress',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    InputField(
                      hint: 'City',
                      labelText: 'City',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    InputField(
                      hint: 'Region',
                      labelText: 'Region',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    InputField(
                      prefixIcon: Icons.account_box_outlined,
                      hint: 'Phone Number',
                      labelText: 'Phone Nuumber',
                      passwordhidden: !passwordVisible,
                      secureText: false,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      maxTextLength: 9,
                      textInputType: TextInputType.numberWithOptions(),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                    SquareButton(
                      buttonText: 'Add Address',
                      onPress: () {
                        Navigator.pushNamed(context, '/home', arguments: 3);
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
