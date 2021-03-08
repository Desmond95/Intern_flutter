import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/home', arguments: 3);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Payment',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/visa_page');
                },
                leading: Container(
                  width: 26,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage('images/visa.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Text(
                  'Visa Card',
                  style: kLabelTextStyleBlue,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/momo');
                },
                leading: Container(
                  width: 26,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage('images/mtn money1.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Text(
                  'MOMO',
                  style: kLabelTextStyleBlue,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/om_page');
                },
                leading: Container(
                  width: 26,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage('images/orange money.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Text(
                  'OM',
                  style: kLabelTextStyleBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
