import 'package:fast_shop/components/add_cart.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ItemList itemList = ItemList();
  int itemCount = 1;
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

  void addCount() {
    setState(() {
      itemCount++;
    });
  }

  void subtractCount() {
    setState(() {
      itemCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ReusableCartWidget(
            onPress: onPressHeart,
            onPressAdd: addCount,
            onPressSubtract: subtractCount,
          ),
        ),
        Expanded(
          child: ReusableCartWidget(
            onPress: onPressHeart,
            onPressAdd: addCount,
            onPressSubtract: subtractCount,
          ),
        ),
        Expanded(
          child: ReusableCartWidget(
            onPress: onPressHeart,
            onPressAdd: addCount,
            onPressSubtract: subtractCount,
          ),
        ),
        Expanded(
          child: ReusableCartWidget(
            onPress: onPressHeart,
            onPressAdd: addCount,
            onPressSubtract: subtractCount,
          ),
        ),
        Expanded(
          child: ReusableCartWidget(
            onPress: onPressHeart,
            onPressAdd: addCount,
            onPressSubtract: subtractCount,
          ),
        ),
      ],
    );
  }
}
