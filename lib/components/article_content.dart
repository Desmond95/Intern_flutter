import 'package:flutter/material.dart';
import 'constants.dart';

class ArticleContent extends StatelessWidget {
  ArticleContent(
      {this.articleImage,
      this.articlePrice,
      this.articleItem,
      this.articlePromoPrice});
  final AssetImage articleImage;
  final String articleItem;
  final double articlePrice;
  final double articlePromoPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  //  border: Border.all(color: Colors.red),
                  image: DecorationImage(
                    image: articleImage,
                    fit: BoxFit.fitHeight,
                  )),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              articleItem,
              style: kLabelTextStyleBlueArticle,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                articlePromoPrice == null
                    ? Text(
                        articlePrice.toString() + ' FCFA',
                        style: kLabelTextStyleYellowArticle,
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            articlePrice.toString() + ' FCFA',
                            style: kLabelTextStyleYellowArticle,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          RichText(
                              text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: articlePromoPrice.toString() + ' FCFA',
                                style: kLabelTextStyleBlueArticlePromo,
                              ),
                              TextSpan(
                                  text: '  25% off',
                                  style: TextStyle(
                                      color: kRedColor,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ))
                        ],
                      ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
