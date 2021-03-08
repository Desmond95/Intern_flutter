import 'package:fast_shop/components/constants.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressedOrder() {
      Navigator.popAndPushNamed(context, '/home', arguments: 3);
    }

    return SafeArea(
        child: WillPopScope(
      onWillPop: _onBackPressedOrder,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Order',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, '/order_details');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue.shade100),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                              title: Text(
                                'LDK5S4JF',
                                style: kLabelTextStyleBlue,
                              ),
                              subtitle: Text(
                                'Order at Dovv: March 15, 2021',
                                style: kLabelDescriptionArticle,
                              )),
                          Divider(
                            height: 2,
                            color: Colors.blue.shade100,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery',
                                  style: kLabelDescriptionArticle,
                                ),
                                Text(
                                  'Delivery',
                                  style: kLabelTextStyleBlueArticle,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Items',
                                  style: kLabelDescriptionArticle,
                                ),
                                Text(
                                  '5 items purchased',
                                  style: kLabelTextStyleBlueArticle,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                              title: Text(
                                'Price',
                                style: kLabelDescriptionArticle,
                              ),
                              trailing: Text(
                                '15000FCFA',
                                style: kLabelTextStyleYellowArticle,
                              )),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, '/order_details');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue.shade100),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                              title: Text(
                                'LDK5S4JF',
                                style: kLabelTextStyleBlue,
                              ),
                              subtitle: Text(
                                'Order at Dovv: March 15, 2021',
                                style: kLabelDescriptionArticle,
                              )),
                          Divider(
                            height: 2,
                            color: Colors.blue.shade100,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery',
                                  style: kLabelDescriptionArticle,
                                ),
                                Text(
                                  'Delivery',
                                  style: kLabelTextStyleBlueArticle,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Items',
                                  style: kLabelDescriptionArticle,
                                ),
                                Text(
                                  '5 items purchased',
                                  style: kLabelTextStyleBlueArticle,
                                )
                              ],
                            ),
                          ),
                          ListTile(
                              title: Text(
                                'Price',
                                style: kLabelDescriptionArticle,
                              ),
                              trailing: Text(
                                '15000FCFA',
                                style: kLabelTextStyleYellowArticle,
                              )),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
