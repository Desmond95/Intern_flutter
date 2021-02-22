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
        Container(
          padding: EdgeInsets.only(left: 5),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              //  border: Border.all(color: Colors.red),
              image:
                  DecorationImage(image: articleImage, fit: BoxFit.fitHeight)),
        ),
        // Image(
        //   image: articleImage,
        //   width: 100,
        //   height: 100,
        // ),
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
