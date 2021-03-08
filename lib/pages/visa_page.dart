import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';

class VisaPage extends StatefulWidget {
  @override
  _VisaPageState createState() => _VisaPageState();
}

class _VisaPageState extends State<VisaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              iconTheme: IconThemeData(color: kIconColor),
              title: Text(
                'Visa',
                style: kLabelTextStyleBlue,
              ),
            ),
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.70,
                      padding: EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card Number',
                                  style: kLabelTextCategoryStyleBlue,
                                ),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Card Number',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF4D50A),
                                        width: 1,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0x5F0B0F82))),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Expiration Date',
                                              style:
                                                  kLabelTextCategoryStyleBlue,
                                            ),
                                            TextField(
                                              keyboardType:
                                                  TextInputType.datetime,
                                              decoration: InputDecoration(
                                                hintText: 'Expiration Date',
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFF4D50A),
                                                    width: 1,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0x5F0B0F82))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Security Code',
                                            style: kLabelTextCategoryStyleBlue,
                                          ),
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            maxLength: 3,
                                            decoration: InputDecoration(
                                              hintText: 'Security Code',
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFF4D50A),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0x5F0B0F82))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card Holder',
                                  style: kLabelTextCategoryStyleBlue,
                                ),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Card Holder',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF4D50A),
                                        width: 1,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0x5F0B0F82))),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                    SquareButton(
                      buttonText: 'Pay',
                      onPress: () {
                        Navigator.pushNamed(context, '/success_page');
                      },
                    ),
                  ]),
                ))));
  }
}
