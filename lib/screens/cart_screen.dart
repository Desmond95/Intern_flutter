import 'package:fast_shop/components/add_cart.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartWidget> cartWidgets = [
    CartWidget(),
    CartWidget(),
  ];
  void onPressDelete() {
    setState(() {
      cartWidgets.removeAt(index);
    });
  }

  int index;
  @override
  Widget build(BuildContext context) {
    if (cartWidgets.isEmpty) {
      return Center(
        child: Text('Cart is Empty'),
      );
    }
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.75,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, i) => cartWidgets.elementAt(i),
                itemCount: cartWidgets.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 175,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue.shade100),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                          title: Text('Items(3)'), trailing: Text('12000FCFA')),
                      ListTile(
                          title: Text('Delivery'), trailing: Text('1000FCFA')),
                      Divider(
                        height: 2,
                        color: kIconColor,
                        indent: 15,
                        endIndent: 15,
                      ),
                      ListTile(
                          title: Text(
                            'Total Price',
                            style: kLabelTextStyleBlue,
                          ),
                          trailing: Text('13000FCFA')),
                    ],
                  )),
            ),
            SquareButton(
              buttonText: 'CheckOut',
              onPress: () {
                setState(() {
                  // Navigator.pushNamed(context, '/home');
                  cartWidgets.remove(index);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
