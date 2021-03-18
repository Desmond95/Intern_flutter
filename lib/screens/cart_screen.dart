import 'package:fast_shop/components/add_cart.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

ItemList itemList = ItemList();

class _CartScreenState extends State<CartScreen> {
  bool isPressed = false;
  int itemCount = 1;
  Color color = Colors.red;
  IconData iconHeart;

  // List<CartWidget> cartWidgets = [
  //   CartWidget(
  //     isPressed: false,
  //     itemCount: 1,
  //     productName: 'Pastries',
  //     productPrice: 1250,
  //     color: Colors.red,
  //     onPressAdd: () {

  //     },
  //     onPressDelete: () {},
  //     onPressHeart: () {},
  //     onPressSubtract: () {},
  //     itemImage: itemList.sweetItems[0].image,
  //     iconAdd: Icons.add,
  //     iconDelete: Icons.delete,
  //     iconHeart: Icons.favorite_outline,
  //     iconSubtract: Icons.remove,
  //   ),
  //   // CartWidget(itemImage: itemList.sweetItems[0].image),
  //   // CartWidget(
  //   //   itemImage: itemList.bagItems[0].image,
  //   // )
  // ];
  // void onPressDelete() {
  //   setState(() {
  //     cartWidgets.removeAt(index);
  //   });
  // }

  // int index;
  void onPressAdd() {
    setState(() {
      if (0 <= itemCount && itemCount < 10) {
        itemCount++;
      } else {
        itemCount = 10;
      }
    });
    print('Add item');
  }

  void onPressSubtract() {
    setState(() {
      if (itemCount > 0) {
        itemCount--;
      } else {
        itemCount = 0;
      }
    });
    print('Subtract item');
  }

  void onPressHeart() {
    setState(() {
      if (isPressed == false) {
        isPressed = true;
        color = kRedColor;
        iconHeart = Icons.favorite;
      } else {
        isPressed = false;
        color = null;
        iconHeart = Icons.favorite_outline;
      }
    });
    print('Pressed heart');
  }

  @override
  Widget build(BuildContext context) {
    // if (cartWidgets.isEmpty) {
    //   return Center(
    //     child: Text('Cart is Empty'),
    //   );
    // }
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.75,
              child: ListView(children: [
                // .builder(
                //   physics: BouncingScrollPhysics(),
                //  itemBuilder: (context, i) =>
                CartWidget(
                  isPressed: isPressed,
                  itemCount: itemCount,
                  productName: 'Pastries',
                  productPrice: 1250,
                  color: color,
                  onPressAdd: onPressAdd,
                  onPressDelete: () {},
                  onPressHeart: onPressHeart,
                  onPressSubtract: onPressSubtract,
                  itemImage: itemList.sweetItems[0].image,
                  iconAdd: Icons.add,
                  iconDelete: Icons.delete,
                  iconHeart: iconHeart,
                  iconSubtract: Icons.remove,
                ),
                // itemCount: 2,
              ]),
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
                          title: Text('Items($itemCount)'),
                          trailing: Text('12000FCFA')),
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
                  Navigator.pushNamed(context, '/payment');
                  // cartWidgets.remove(index);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
