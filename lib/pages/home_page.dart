import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/screens/account_screen.dart';
import 'package:fast_shop/screens/cart_screen.dart';
import 'package:fast_shop/screens/home_screen.dart';
import 'package:fast_shop/screens/offer_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  int data;
  HomePage({Key key, @required this.data}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(data);
}

class _HomePageState extends State<HomePage> {
  int data;
  int _selectedIndex;
  _HomePageState(this.data);
  List<Widget> _widgetOptions = [
    HomeScreen(),
    OfferScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      data = index;
    });
  }

  Widget appBarFunction() {
    switch (data) {
      case 0:
        return AppBar(
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
            Row(
              children: [
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
                ),
              ],
            ),
          ],
        );
      case 1:
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Super Flash Sales',
            style: kLabelTextStyleBlue,
          ),
          actions: [
            Icon(
              Icons.search,
              color: kIconColor,
              size: 30,
            )
          ],
        );
      case 2:
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Your Cart',
            style: kLabelTextStyleBlue,
          ),
        );
      case 3:
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Account',
            style: kLabelTextStyleBlue,
          ),
        );
      default:
        return AppBar(
          title: Text('Error'),
        );
    }
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: [
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }

  Future<bool> _onBackPressedToHome() {
    setState(() {
      data = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: data == 0 ? _onBackPressed : _onBackPressedToHome,
        child: Scaffold(
          appBar: appBarFunction(),
          body: Center(
            child: _widgetOptions.elementAt(data),
            // child: Text('$sentArgument'),
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
            currentIndex: data,
            onTap: _onItemTap,
          ),
        ),
      ),
    );
  }
}
