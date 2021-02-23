import 'package:fast_shop/components/constants.dart';
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
            'Notification',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/offer');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.local_offer_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Offer',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/feed');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.list_alt_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Feed',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/activities');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Activities',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
