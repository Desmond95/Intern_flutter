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
          elevation: 20,
          iconTheme: IconThemeData(color: Colors.blueGrey[900]),
          title: Text(
            'Notification',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.local_offer_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/offer');
                      },
                      child: Text(
                        'Offer',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.list_alt_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/feed');
                      },
                      child: Text(
                        'Feed',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/activities');
                      },
                      child: Text(
                        'Activities',
                        style: kLabelTextStyleBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
