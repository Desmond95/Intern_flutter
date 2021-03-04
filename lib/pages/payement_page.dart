import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';

class PayementPage extends StatefulWidget {
  @override
  _PayementPageState createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
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
            'Payment',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/feeds');
                  },
                  child: Row(
                    children: [
                      Container(
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
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Credit Card or Debit Card',
                          style: kLabelTextStyleBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
              Container(
                width: 300,
                height: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/momo');
                  },
                  child: Row(
                    children: [
                      Container(
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
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'MoMo',
                          style: kLabelTextStyleBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
              Container(
                width: 300,
                height: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/om');
                  },
                  child: Row(
                    children: [
                      Container(
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
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'OM',
                          style: kLabelTextStyleBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
