import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:fast_shop/data_search.dart';
import 'package:fast_shop/screens/account_screen.dart';
import 'package:fast_shop/screens/cart_screen.dart';
import 'package:fast_shop/screens/home_screen.dart';
import 'package:fast_shop/screens/offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  final int data;
  HomePage({Key key, @required this.data}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(data);
}

class _HomePageState extends State<HomePage> {
  int data;
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
          elevation: 1,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text('Dovv', style: kLabelTextStyleBlue),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: kIconColor,
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, '/notification');
                    });
                  },
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: kIconColor,
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
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(
                Icons.search,
                color: kIconColor,
                size: 30,
              ),
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
    if (data != 0) {
      setState(() {
        data = 0;
      });
    }
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: [
              new TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              new TextButton(
                onPressed: () => SystemNavigator.pop(),
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
    return null;
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
