import 'package:fast_shop/components/card_article.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
      CardArticle(
        articleImage: AssetImage('images/cakes.jpg'),
        articlePrice: '20,000',
        articleitem: 'Cake',
        onPress: () {
          setState(() {
            Navigator.pushNamed(context, '/product');
          });
        },
        cardChild: null,
      ),
    ]))));
  }
}
