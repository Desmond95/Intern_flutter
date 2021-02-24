import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/screens/explore_screen.dart';
import 'package:fast_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ExploreScreen(),
    Text('Profile Screen'),
    Text('Messgaes Screen'),
    Text('Profile Screen'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: InputField(
            hint: 'Search Product',
            labelText: null,
            passwordhidden: false,
            prefixIcon: Icons.search,
            suffixIcon2: Icons.send,
            padding: EdgeInsets.only(left: 0, right: 0),
          ),
          actions: [
            Icon(
              Icons.search,
              color: kIconColor,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, '/notification');
                });
              },
              child: Icon(
                Icons.notifications_outlined,
                color: kIconColor,
                size: 30,
              ),
            )
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: kIconColor,
                size: 24,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home_outlined,
                color: Color(0xFF40BFFF),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Color(0xFF40BFFF),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.add_shopping_cart,
                color: Color(0xFF40BFFF),
              ),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.local_offer_outlined,
                color: Color(0xFF40BFFF),
              ),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.person_outline,
                color: Color(0xFF40BFFF),
              ),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
