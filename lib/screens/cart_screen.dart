import 'package:fast_shop/components/add_cart.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

CartWidget cartWidget = CartWidget();

List<CartWidget> cartWidgets = [];

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    if (cartWidget == null) {
      return Center(
        child: Text('Cart is Empty'),
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ListView.builder(
          itemBuilder: (context, i) => cartWidgets.elementAt(i),
          itemCount: cartWidgets.length,
        ),
        Container(
          height: 150,
          child: Text('hjgjhg'),
        ),
        Container(
          height: 150,
          child: Text('asdjkadhkjasdhkj'),
        ),
        SquareButton(
          buttonText: 'CheckOut',
          onPress: () {
            setState(() {
              Navigator.pushNamed(context, '/home');
            });
          },
        )
      ],
    );
  }
}
