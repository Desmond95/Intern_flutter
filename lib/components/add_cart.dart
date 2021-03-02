import 'package:fast_shop/components/category_container.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CartWidget extends StatefulWidget {
  @override
  _CartWidgetState createState() => _CartWidgetState();
}

IconData _iconHeart = Icons.favorite_outline;
bool isPressed = false;
int itemCount = 1;
Color _color;
int price;

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
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
                              iconSize: 30,
                              onPressed: onPress,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete_outline),
                              padding: EdgeInsets.zero,
                              iconSize: 30,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$price',
                          style: kLabelTextStyleYellow,
                        ),
                        Container(
                          width: 150,
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
                                        maxWidth: 20,
                                        maxHeight: 30,
                                      ),
                                      iconSize: 30,
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.play_disabled),
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
                                      maxWidth: 20,
                                      maxHeight: 30,
                                    ),
                                    iconSize: 30,
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
