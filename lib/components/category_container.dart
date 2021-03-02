import 'package:fast_shop/components/item_list.dart';
import 'package:fast_shop/components/list_component.dart';
import 'package:fast_shop/components/list_views.dart';
import 'package:flutter/material.dart';

import 'article_content.dart';
import 'card_article.dart';

ItemList itemList = ItemList();
int i;

class CategoryContainer {
  List<ListComponent> listComponent = [
    ListComponent(
      categoryRow: Row(
        children: [Text(itemList.categoryItems[i]), Text('See More')],
      ),
      listCategory: Container(
        height: 190,
        child: ListView.builder(
          itemBuilder: (context, i) => CardArticle(
            cardChild: ArticleContent(
              articleImage: itemList.sweetItems[i].image,
              articleItem: itemList.sweetItems[i].itemName,
              articlePrice: itemList.sweetItems[i].price,
            ),
            onPress: null,
          ),
          itemCount: itemList.sweetItems.length,
          shrinkWrap: true,
        ),
      ),
    )
  ];
}
