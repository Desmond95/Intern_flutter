import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/horizontal_list.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

ItemList itemList = ItemList();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //carousel slider
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: CarouselWidgetPage(),
            ),
            //categories
            Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
                          style: kLabelTextStyleBlueArticle,
                        ),
                        Text(
                          'More Categories',
                          style: kLabelTextStyleYellowArticle,
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 110,
                      child: ListView.builder(
                        itemBuilder: (context, i) => HorizontalList(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, '/explore');
                            });
                          },
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[i].image,
                          itemName: itemList.iconItems[i].itemName,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.iconItems.length,
                        physics: BouncingScrollPhysics(),
                      )),
                ])),
            //pastries
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemList.categoryItems[0],
                        style: kLabelTextCategoryStyleBlue,
                      ),
                      Text(
                        'See More',
                        style: kLabelTextCategoryStyleYellow,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 187,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => CardArticle(
                      // cardChild: Text(itemsList[i]),
                      cardChild: ArticleContent(
                        width: 100,
                        articleImage: itemList.sweetItems[i].image,
                        articleItem: itemList.sweetItems[i].itemName,
                        articlePrice: itemList.sweetItems[i].price,
                      ),
                      onPress: () {
                        setState(() {
                          Navigator.pushNamed(context, '/product',
                              arguments: i);
                        });
                      },
                    ),
                    itemCount: itemList.sweetItems.length,
                  ),
                ),
              ],
            ),

            //bags
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemList.categoryItems[1],
                        style: kLabelTextCategoryStyleBlue,
                      ),
                      Text(
                        'See More',
                        style: kLabelTextCategoryStyleYellow,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 187,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => CardArticle(
                      // cardChild: Text(itemsList[i]),
                      cardChild: ArticleContent(
                        width: 100,
                        articleImage: itemList.bagItems[i].image,
                        articleItem: itemList.bagItems[i].itemName,
                        articlePrice: itemList.bagItems[i].price,
                      ),
                      onPress: () {
                        setState(() {
                          Navigator.pushNamed(context, '/product',
                              arguments: i);
                        });
                      },
                    ),
                    itemCount: itemList.bagItems.length,
                  ),
                ),
              ],
            ),
            //fashion
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemList.categoryItems[2],
                        style: kLabelTextCategoryStyleBlue,
                      ),
                      Text(
                        'See More',
                        style: kLabelTextCategoryStyleYellow,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 187,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => CardArticle(
                      // cardChild: Text(itemsList[i]),
                      cardChild: ArticleContent(
                        width: 100,
                        articleImage: itemList.fashionItems[i].image,
                        articleItem: itemList.fashionItems[i].itemName,
                        articlePrice: itemList.fashionItems[i].price,
                      ),
                      onPress: () {
                        setState(() {
                          Navigator.pushNamed(context, '/product',
                              arguments: i);
                        });
                      },
                    ),
                    itemCount: itemList.fashionItems.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
