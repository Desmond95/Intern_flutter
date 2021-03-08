import 'package:fast_shop/onboardingscreen.dart';
import 'package:fast_shop/pages/OM_page.dart';
import 'package:fast_shop/pages/add_address_page.dart';
import 'package:fast_shop/pages/home_page.dart';
import 'package:fast_shop/pages/login.dart';
import 'package:fast_shop/pages/momo_page.dart';
import 'package:fast_shop/pages/notification_activities_page.dart';
import 'package:fast_shop/pages/notification_offer_page.dart';
import 'package:fast_shop/pages/notification_page.dart';
import 'package:fast_shop/pages/order_details.dart';
import 'package:fast_shop/pages/order_page.dart';
import 'package:fast_shop/pages/payment_page.dart';
import 'package:fast_shop/pages/products_page.dart';
import 'package:fast_shop/pages/profile_page.dart';
import 'package:fast_shop/pages/sign_up.dart';
import 'package:fast_shop/pages/explore_page.dart';
import 'package:fast_shop/pages/success_page.dart';
import 'package:fast_shop/pages/visa_page.dart';
import 'package:fast_shop/screens/offer_screen.dart';
import 'package:flutter/material.dart';
import 'pages/notification_feed_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments while passed in Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case '/home':
        if (args is int) {
          return MaterialPageRoute(builder: (_) => HomePage(data: args));
        }
        return _errorRoute();
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/offer':
        return MaterialPageRoute(builder: (_) => OfferScreen());
      case '/notification':
        return MaterialPageRoute(builder: (_) => NotificationPage());
      case '/notification_activities':
        return MaterialPageRoute(builder: (_) => NotificationActivitiesPage());
      case '/feed':
        return MaterialPageRoute(builder: (_) => NotificationFeedPage());
      case '/notification_offer':
        return MaterialPageRoute(builder: (_) => NotificationOfferPage());
      case '/product':
        return MaterialPageRoute(builder: (_) => ProductPage());
      case '/add_address':
        return MaterialPageRoute(builder: (_) => AddAddressPage());
      case '/momo':
        return MaterialPageRoute(builder: (_) => MomoPage());
      case '/om_page':
        return MaterialPageRoute(builder: (_) => OMPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/payment':
        return MaterialPageRoute(builder: (_) => PaymentPage());
      case '/orders':
        return MaterialPageRoute(builder: (_) => OrderPage());
      case '/order_details':
        return MaterialPageRoute(builder: (_) => OrderDetailsPage());
      case '/explore':
        return MaterialPageRoute(builder: (_) => ExplorePage());
      case '/visa_page':
        return MaterialPageRoute(builder: (_) => VisaPage());
      case '/success_page':
        return MaterialPageRoute(builder: (_) => SuccessPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      ),
    );
  }
}
