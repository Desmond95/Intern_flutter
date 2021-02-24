import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/screens/home_screen.dart';
import 'package:fast_shop/screens/offer_screen.dart';
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
    OfferScreen(),
    Text('Cart Screen'),
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
                color: Color(0xFFF4D50A),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.local_offer_outlined,
                color: Color(0xFFF4D50A),
              ),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFFF4D50A),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: kIconColor,
              ),
              activeIcon: Icon(
                Icons.person_outline,
                color: Color(0xFFF4D50A),
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
