import 'package:fast_shop/components/constants.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 20,
          iconTheme: IconThemeData(color: Colors.blueGrey[900]),
          title: Text(
            'Offer',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 10, 20),
                  child: Column(
                    children: [
                      Text(
                        'Nike is more than',
                        style: kLabelTextStyleBlue,
                      ),
                      Text(
                        'oulala you are amazing',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 10, 20),
                  child: Column(
                    children: [
                      Text(
                        'Nike is more than',
                        style: kLabelTextStyleBlue,
                      ),
                      Text(
                        'oulala you are amazing',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 10, 20),
                  child: Column(
                    children: [
                      Text(
                        'Nike is more than',
                        style: kLabelTextStyleBlue,
                      ),
                      Text(
                        'oulala you are amazing',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
