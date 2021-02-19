import 'package:flutter/material.dart';
import 'constants.dart';

class ArticleContent extends StatelessWidget {
  ArticleContent({this.articleImage, this.articlePrice, this.articleItem});
  final AssetImage articleImage;
  final String articleItem;
  final String articlePrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image(
          image: articleImage,
          width: 100,
          height: 100,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articleItem,
          style: kLabelTextStyleBlueArticle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articlePrice,
          style: kLabelTextStyleYellowArticle,
        ),
      ],
    );
  }
}
