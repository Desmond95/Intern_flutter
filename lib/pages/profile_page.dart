import 'dart:convert';
import 'package:fast_shop/components/form_inputfield.dart';
import 'package:fast_shop/components/inputfield.dart';
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
  String phoneNumber = '651034554';
  String emailAddress = 'desnshanji@gmail.com';
  String password = '1234';

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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String passwordEncoded = stringToBase64.encode(password);
    String passwordDecoded = stringToBase64.decode(passwordEncoded);

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
                  contentPadding: EdgeInsets.only(left: 16),
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
                  contentPadding: EdgeInsets.only(left: 16),
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
                    Navigator.pushNamed(context, '/add_address');
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 16),
                    leading: Icon(
                      Icons.mail_outline_outlined,
                      color: Color(0xFFF4D50A),
                    ),
                    title: Text(
                      'Email',
                      style: kLabelTextStyleBlue,
                    ),
                    trailing: GestureDetector(
                      onTap: _emailAddress,
                      child: Container(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '$emailAddress',
                              style: TextStyle(color: Colors.black87),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 16),
                  leading: Icon(
                    Icons.phone_android_outlined,
                    color: Color(0xFFF4D50A),
                  ),
                  title: Text(
                    'Phone Number',
                    style: kLabelTextStyleBlue,
                  ),
                  trailing: GestureDetector(
                    onTap: _phoneNumber,
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          phoneNumber == null
                              ? Text(('#'))
                              : Text(
                                  '$phoneNumber',
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
                ListTile(
                  contentPadding: EdgeInsets.only(left: 16),
                  leading: Icon(
                    Icons.lock_outline,
                    color: Color(0xFFF4D50A),
                  ),
                  title: Text(
                    'Change password',
                    style: kLabelTextStyleBlue,
                  ),
                  trailing: GestureDetector(
                    onTap: _changePassword,
                    child: Container(
                      width: 85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$passwordEncoded',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 12),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                  child: SquareButton(
                    buttonText: 'Save',
                    onPress: () {
                      Navigator.pushNamed(context, '/home', arguments: 3);
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

  void _phoneNumber() async {
    String phoneNum;
    var typedNum = await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) => SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Theme(
                data: ThemeData(canvasColor: Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormInputField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          textInputType: TextInputType.phone,
                          prefixIcon: Icons.phone,
                          padding: EdgeInsets.only(top: 10),
                          passwordhidden: false,
                          maxTextLength: 9,
                          hint: 'Enter your Phone Number',
                          labelText: "Phone Number",
                          onChanged: (value) {
                            phoneNum = value;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a Snackbar.
                                Navigator.pop(context, phoneNum);
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   SnackBar(content: Text('Processing Data')));
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));

    if (typedNum != null) {
      setState(() {
        phoneNumber = typedNum;
      });
    }
  }

  void _emailAddress() async {
    String email;
    var typedEmail = await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) => SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Theme(
                data: ThemeData(canvasColor: Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormInputField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          textInputType: TextInputType.emailAddress,
                          prefixIcon: Icons.email_outlined,
                          padding: EdgeInsets.only(top: 10),
                          passwordhidden: false,
                          helperText: 'example@gmail.com',
                          hint: 'Enter your email',
                          labelText: "Email Address",
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a Snackbar.
                                Navigator.pop(context, email);
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   SnackBar(content: Text('Processing Data')));
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));

    if (typedEmail != null) {
      setState(() {
        emailAddress = typedEmail;
      });
    }
  }

  void _changePassword() async {
    String oldPass, newPass, confirmPass;
    bool passwordVisible1 = true;
    bool passwordVisible2 = true;
    bool passwordVisible3 = true;
    bool passwordToggle1 = true;
    bool passwordToggle2 = true;
    bool passwordToggle3 = true;

    var typedPassword = await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (_) => Theme(
              data: ThemeData(
                  primaryColor: Color(0xFFF4D50A),
                  focusColor: Color(0xFF0B0F82),
                  canvasColor: Colors.grey),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormInputField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            } else if (oldPass != password) {
                              return 'Please Input Old Password';
                            }
                            return null;
                          },
                          prefixIcon: Icons.lock_outline,
                          padding: EdgeInsets.only(top: 10),
                          passwordhidden: passwordVisible1,
                          suffixIcon: Icons.visibility,
                          suffixIcon2: Icons.visibility,
                          hint: 'Old Password',
                          labelText: "Old Password",
                          secureText: passwordToggle1,
                          onPressed: () {
                            setState(() {
                              passwordToggle1 = !passwordToggle1;
                              passwordVisible1 = !passwordVisible1;
                            });
                          },
                          onChanged: (value) {
                            oldPass = value;
                          },
                        ),
                        FormInputField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          prefixIcon: Icons.lock_outline,
                          padding: EdgeInsets.only(top: 10),
                          passwordhidden: passwordVisible2,
                          suffixIcon: Icons.visibility,
                          suffixIcon2: Icons.visibility,
                          hint: 'New Password',
                          labelText: "Enter new password",
                          secureText: passwordToggle2,
                          onPressed: () {
                            setState(() {
                              passwordToggle2 = !passwordToggle2;
                              passwordVisible2 = !passwordVisible2;
                            });
                          },
                          onChanged: (value) {
                            newPass = value;
                          },
                        ),
                        FormInputField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            } else if (confirmPass != newPass) {
                              return 'New passwords don\'t match';
                            }
                            return null;
                          },
                          prefixIcon: Icons.lock_outline,
                          padding: EdgeInsets.only(top: 10),
                          passwordhidden: passwordVisible3,
                          suffixIcon: Icons.visibility,
                          suffixIcon2: Icons.visibility,
                          hint: 'Confirm Password',
                          labelText: "Confirm Password",
                          secureText: passwordToggle3,
                          onPressed: () {
                            setState(() {
                              passwordToggle3 = !passwordToggle3;
                              passwordVisible2 = !passwordVisible3;
                            });
                          },
                          onChanged: (value) {
                            confirmPass = value;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a Snackbar.
                                Navigator.pop(context, newPass);
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   SnackBar(content: Text('Processing Data')));
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));

    if (typedPassword != null) {
      setState(() {
        password = typedPassword;
      });
    }
  }
}
