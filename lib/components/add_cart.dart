import 'package:flutter/material.dart';
import 'package:fast_shop/components/item_list.dart';

import 'constants.dart';

class CartWidget extends StatefulWidget {
  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  ItemList itemList = ItemList();
  IconData _iconHeart = Icons.favorite_outline;
  bool isPressed = false;
  int itemCount = 1;
  Color _color;
  int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
        // margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue.shade100),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: itemList.bagItems[0].image, fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'productName',
                          style: kLabelTextStyleBlue,
                          softWrap: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(_iconHeart),
                              padding: EdgeInsets.zero,
                              color: _color,
                              iconSize: 24,
                              onPressed: onPress,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete_outline),
                              padding: EdgeInsets.zero,
                              iconSize: 24,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$price',
                            style: kLabelTextStyleYellow,
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.blue.shade100),
                                color: Colors.blue.shade100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Card(
                                    margin: EdgeInsets.zero,
                                    elevation: 2,
                                    child: IconButton(
                                        constraints: BoxConstraints(
                                          maxWidth: 25,
                                          maxHeight: 25,
                                        ),
                                        iconSize: 24,
                                        padding: EdgeInsets.zero,
                                        icon: Icon(Icons.remove),
                                        onPressed: onPressSubtract),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '$itemCount',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: Card(
                                    margin: EdgeInsets.zero,
                                    elevation: 2,
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints(
                                        maxWidth: 25,
                                        maxHeight: 25,
                                      ),
                                      iconSize: 24,
                                      icon: Icon(Icons.add),
                                      onPressed: onPressAdd,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressAdd() {
    setState(() {
      if (0 <= itemCount && itemCount < 10) {
        itemCount++;
      } else {
        itemCount = 10;
      }
    });
  }

  void onPressSubtract() {
    setState(() {
      if (itemCount > 0) {
        itemCount--;
      } else {
        itemCount = 0;
      }
    });
  }

  void onPress() {
    setState(() {
      if (isPressed == false) {
        isPressed = true;
        _color = kRedColor;
        _iconHeart = Icons.favorite;
      } else {
        isPressed = false;
        _color = null;
        _iconHeart = Icons.favorite_outline;
      }
    });
  }
}
