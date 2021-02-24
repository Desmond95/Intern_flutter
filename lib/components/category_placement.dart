import 'package:flutter/material.dart';

import 'article_content.dart';
import 'card_article.dart';

class CategoryPlacement extends StatefulWidget {
  @override
  _CategoryPlacementState createState() => _CategoryPlacementState();
}

class _CategoryPlacementState extends State<CategoryPlacement> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            children: [
              CardArticle(
                onPress: () {
                  setState(() {
                    Navigator.pushNamed(context, '/product');
                  });
                },
                cardChild: ArticleContent(
                  articleImage: AssetImage('images/cakes.jpg'),
                  articleItem: 'Cake',
                  articlePrice: 20000,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
