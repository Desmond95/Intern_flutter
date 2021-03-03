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
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Row(
              children: [
                Icon(
                  Icons.person_outlined,
                  color: Color(0xFFF4D50A),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Profile',
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
                  Icons.devices_other_outlined,
                  color: Color(0xFFF4D50A),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Others',
                    style: kLabelTextStyleBlue,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/addaddress');
            },
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFFF4D50A),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Address',
                    style: kLabelTextStyleBlue,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/payement');
            },
            child: Row(
              children: [
                Icon(
                  Icons.payments_outlined,
                  color: Color(0xFFF4D50A),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Payment',
                    style: kLabelTextStyleBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // child: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     elevation: 1,
      //     toolbarHeight: 80,
      //     iconTheme: IconThemeData(color: kIconColor),
      //     title: Text(
      //       'Account',
      //       style: kLabelTextStyleBlue,
      //     ),
      //   ),
      // ),
    );
  }
}
