import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CartWidget extends StatelessWidget {
  CartWidget(
      {this.onPressHeart,
      this.isPressed,
      this.onPressAdd,
      this.onPressSubtract,
      this.onPressDelete,
      this.iconHeart,
      this.iconDelete,
      this.iconAdd,
      this.iconSubtract,
      this.itemCount,
      this.itemImage,
      this.productName,
      this.color,
      this.productPrice});
  final Function onPressHeart, onPressAdd, onPressSubtract, onPressDelete;
  final IconData iconHeart, iconDelete, iconAdd, iconSubtract;
  //= Icons.favorite_outline;
  final bool isPressed;
  final int itemCount;
  final AssetImage itemImage;
  final String productName;
  final Color color;
  final int productPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
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
                    image:
                        DecorationImage(image: itemImage, fit: BoxFit.cover)),
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
                          '$productName',
                          style: kLabelTextStyleBlue,
                          softWrap: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(iconHeart),
                              padding: EdgeInsets.zero,
                              color: color,
                              iconSize: 24,
                              onPressed: onPressHeart,
                            ),
                            IconButton(
                              icon: Icon(iconDelete),
                              padding: EdgeInsets.zero,
                              iconSize: 24,
                              onPressed: onPressDelete,
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
                            '$productPrice',
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
                                        icon: Icon(iconSubtract),
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
                                      icon: Icon(iconAdd),
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

  // void onPressAdd() {
  //   setState(() {
  //     if (0 <= itemCount && itemCount < 10) {
  //       itemCount++;
  //     } else {
  //       itemCount = 10;
  //     }
  //   });
  // }

  // void onPressSubtract() {
  //   setState(() {
  //     if (itemCount > 0) {
  //       itemCount--;
  //     } else {
  //       itemCount = 0;
  //     }
  //   });
  // }

  // void onPress() {
  //   setState(() {
  //     if (isPressed == false) {
  //       isPressed = true;
  //       _color = kRedColor;
  //       _iconHeart = Icons.favorite;
  //     } else {
  //       isPressed = false;
  //       _color = null;
  //       _iconHeart = Icons.favorite_outline;
  //     }
  //   });
  // }
}
