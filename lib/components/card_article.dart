import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  CardArticle({
    @required this.cardChild,
    @required this.onPress,
  });
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
          onTap: onPress,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.blue.shade100),
            ),
            child: cardChild,
          )),
    );
  }
}
