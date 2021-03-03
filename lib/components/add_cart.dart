import 'package:fast_shop/components/category_container.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CartWidget extends StatefulWidget {
  CartWidget({
    Key key,
  }) : super(key: key);

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  AssetImage productImage;
  String productName, productPrice;
  Row rowOperations;

  @override
  Widget build(BuildContext context) {
    IconData _iconHeart = Icons.favorite_outline;
    Color _color;

    bool isPressed = false;
    void onPressHeart() {
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

    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue.shade100),
        ),
        child: Row(children: [
          Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: itemList.bagItems[0].image, fit: BoxFit.contain)),
          ),
          ListTile(
            title: Text(
              'productName',
              style: kLabelTextCategoryStyleBlue,
            ),
            subtitle: Text(
              'productPrice',
              style: kLabelTextCategoryStyleYellow,
            ),
            trailing: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(_iconHeart),
                      color: _color,
                      onPressed: onPressHeart,
                    ),
                    Icon(Icons.delete_outline)
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ReusableCartWidget extends StatelessWidget {
  ReusableCartWidget({this.onPress, this.onPressSubtract, this.onPressAdd});
  final Function onPress, onPressSubtract, onPressAdd;

  @override
  Widget build(BuildContext context) {
    IconData _iconHeart = Icons.favorite_outline;
    int itemCount = 1;

    Color _color;
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                              color: _color,
                              onPressed: onPress,
                              constraints: BoxConstraints(
                                maxWidth: 30,
                                maxHeight: 30,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete_outline),
                              padding: EdgeInsets.zero,
                              iconSize: 30,
                              color: _color,
                              onPressed: onPress,
                              constraints: BoxConstraints(
                                maxWidth: 30,
                                maxHeight: 30,
                              ),
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
                          'Price',
                          style: kLabelTextStyleYellow,
                        ),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blue.shade100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  elevation: 3,
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
                                  elevation: 3,
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
}
