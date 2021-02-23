import 'package:fast_shop/components/constants.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 20,
          iconTheme: IconThemeData(color: Colors.blueGrey[900]),
          title: Text(
            'Feed',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('images/bags/bag.jpg'),
                    width: 48,
                    height: 48,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'New product',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'Cake is a nice one',
                        ),
                        Text(
                          'February 23 2021 10:34',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('images/bags/bag3.jpg'),
                    width: 48,
                    height: 48,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'New product',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'Cake is a nice one',
                        ),
                        Text(
                          'February 23 2021 10:34',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('images/bags/bag5.jpg'),
                    width: 48,
                    height: 48,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'New product',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'Cake is a nice one',
                        ),
                        Text(
                          'February 23 2021 10:34',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
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
