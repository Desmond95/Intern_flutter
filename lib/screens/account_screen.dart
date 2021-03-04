import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: ListTile(
                leading: Icon(
                  Icons.person_outlined,
                  color: Color(0xFFF4D50A),
                  size: 30,
                ),
                title: Text(
                  'Profile',
                  style: kLabelTextStyleBlue,
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/feed');
            },
            child: ListTile(
              leading: Icon(
                Icons.devices_other_outlined,
                color: Color(0xFFF4D50A),
                size: 30,
              ),
              title: Text(
                'Others',
                style: kLabelTextStyleBlue,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/add_address');
            },
            child: ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: Color(0xFFF4D50A),
                size: 30,
              ),
              title: Text(
                'Address',
                style: kLabelTextStyleBlue,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/payment');
            },
            child: ListTile(
              leading: Icon(
                Icons.payments_outlined,
                color: Color(0xFFF4D50A),
                size: 30,
              ),
              title: Text(
                'Payment',
                style: kLabelTextStyleBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
