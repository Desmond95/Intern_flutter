import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  CardArticle(
      {@required this.cardChild,
      @required this.onPress,
      @required this.articleitem,
      @required this.articleImage,
      @required this.articlePrice});
  final Widget cardChild;
  final Function onPress;
  final String articleitem;
  final AssetImage articleImage;
  final String articlePrice;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.blue,
          ),
          child: Column(children: [
            Image(
              image: articleImage,
              width: 125,
              height: 125,
            ),
            Text(
              articleitem,
            ),
            Text(articlePrice),
          ]),
        ));
  }
}
