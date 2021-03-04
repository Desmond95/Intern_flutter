import 'package:flutter/material.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:fast_shop/components/square_button.dart';

import 'dart:io' show Platform;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

List<String> genderList = ['Male', 'Female'];

class _ProfilePageState extends State<ProfilePage> {
  String selectedGender = 'Male';
  IconData _genderIcon = FontAwesomeIcons.venus;

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in genderList) {
      var newItem = DropdownMenuItem(
        child: Text('$currency'),
        value: '$currency',
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      focusColor: Color(0xFF9098B1),
      icon: Icon(
        Icons.keyboard_arrow_right_outlined,
        size: 24,
      ),
      value: selectedGender,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedGender = value;
          selectedGender == 'Male'
              ? _genderIcon = FontAwesomeIcons.mars
              : _genderIcon = FontAwesomeIcons.venus;
        });
      },
    );
  }

  CupertinoPicker iosPicker() {
    List<Text> pickerItems = [];
    for (String currency in genderList) {
      var newItem = Text('$currency');
      pickerItems.add(newItem);
    }
    return CupertinoPicker(
      itemExtent: 32,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Profile',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/dash.jpg',
                        ),
                        radius: 50,
                        // backgroundColor: Colors.pink,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ornella',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF0B0F82),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    _genderIcon,
                    color: Color(0xFFF4D50A),
                    size: 30,
                  ),
                  title: Text(
                    'Gender',
                    style: kLabelTextStyleBlue,
                  ),
                  trailing: Platform.isIOS ? iosPicker() : androidDropdown(),
                ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_today_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  title: Text(
                    'Birthday',
                    style: kLabelTextStyleBlue,
                  ),
                  trailing: GestureDetector(
                    onTap: _pickerDate,
                    child: Container(
                      width: 88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                            style: TextStyle(color: Colors.black87),
                          ),

                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Colors.black54,
                          ),
                          // iconSize: 25,
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addaddress');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Email',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/payement');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Phone Number',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/change_password');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Change password',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 300,
                ),
                // DatePickerWidget(
                //   //  Display date picker widget.
                //   minDateTime: DateTime.utc(1950, 05, 03),
                //   maxDateTime: DateTime.utc(2025, 05, 03),
                //   initialDateTime: DateTime.now(),
                //   dateFormat: 'DATETIME_PICKER_DATE_FORMAT',
                //   locale: DATETIME_PICKER_LOCALE_DEFAULT,
                //   onCancel: () {},
                // ),

                Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                  child: SquareButton(
                    buttonText: 'Save',
                    onPress: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pickerDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990, 03, 05),
        lastDate: DateTime(2021, 03, 05));
    if (date != null) {
      setState(() {
        _dateTime = date;
      });
    }
  }
}
