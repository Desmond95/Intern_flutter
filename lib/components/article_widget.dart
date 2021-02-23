import 'package:flutter/material.dart';

import 'article_content.dart';
import 'card_article.dart';
import 'constants.dart';

Padding articleWidget(
    String itemTypes,
    AssetImage articleImage1,
    articleImage2,
    articleImage3,
    articleImage4,
    String articleItem1,
    articleItem2,
    articleItem3,
    articleItem4,
    double articlePrice1,
    articlePrice2,
    articlePrice3,
    articlePrice4,
    Function onPress) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                itemTypes,
                style: kLabelTextStyleBlue,
              ),
              Text(
                'See More',
                style: kLabelTextStyleYellow,
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              CardArticle(
                onPress: onPress,
                cardChild: ArticleContent(
                  articleImage: articleImage1,
                  articleItem: articleItem1,
                  articlePrice: articlePrice1,
                ),
              ),
              CardArticle(
                onPress: onPress,
                cardChild: ArticleContent(
                  articleImage: articleImage2,
                  articleItem: articleItem2,
                  articlePrice: articlePrice2,
                ),
              ),
              CardArticle(
                onPress: onPress,
                cardChild: ArticleContent(
                  articleImage: articleImage3,
                  articleItem: articleItem3,
                  articlePrice: articlePrice3,
                ),
              ),
              CardArticle(
                onPress: onPress,
                // onPress: () {
                //   setState(() {
                //     Navigator.pushNamed(context, '/product');
                //   });
                // },
                cardChild: ArticleContent(
                  articleImage: articleImage4,
                  articleItem: articleItem4,
                  articlePrice: articlePrice4,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
