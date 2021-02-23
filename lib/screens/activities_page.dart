import 'package:fast_shop/components/constants.dart';
import 'package:flutter/material.dart';

class ActivitiesPage extends StatefulWidget {
  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 20,
          iconTheme: IconThemeData(color: Colors.blueGrey[900]),
          title: Text(
            'Activities',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.swap_horiz_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Nike is more than',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'oulala you are amazing',
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
                  Icon(
                    Icons.swap_horiz_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Nike is more than',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'oulala you are amazing',
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
                  Icon(
                    Icons.swap_horiz_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Nike is more than',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'oulala you are amazing',
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
