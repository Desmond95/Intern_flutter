import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/horizontal_list.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';
import 'package:fast_shop/components/article_widget.dart';

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
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'More Categories',
                          style: kLabelTextStyleYellow,
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 110,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[0].image,
                          itemName: itemList.iconItems[0].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[1].image,
                          itemName: itemList.iconItems[1].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[2].image,
                          itemName: itemList.iconItems[2].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[3].image,
                          itemName: itemList.iconItems[3].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[4].image,
                          itemName: itemList.iconItems[4].itemName,
                        ),
                        HorizontalList(
                          padding: EdgeInsets.all(10),
                          assetImage: itemList.iconItems[5].image,
                          itemName: itemList.iconItems[5].itemName,
                        )
                      ])),
                ])),
            //pastries
            //pastries
            articleWidget(
                'Pastries',
                itemList.sweetItems[0].image,
                itemList.sweetItems[1].image,
                itemList.sweetItems[2].image,
                itemList.sweetItems[3].image,
                itemList.sweetItems[0].itemName,
                itemList.sweetItems[1].itemName,
                itemList.sweetItems[2].itemName,
                itemList.sweetItems[3].itemName,
                itemList.sweetItems[0].price,
                itemList.sweetItems[1].price,
                itemList.sweetItems[2].price,
                itemList.sweetItems[3].price, () {
              setState(() {
                Navigator.pushNamed(context, '/product');
              });
            }),
            //bags
            articleWidget(
                'Bags',
                itemList.bagItems[0].image,
                itemList.bagItems[1].image,
                itemList.bagItems[2].image,
                itemList.bagItems[3].image,
                itemList.bagItems[0].itemName,
                itemList.bagItems[1].itemName,
                itemList.bagItems[2].itemName,
                itemList.bagItems[3].itemName,
                itemList.bagItems[0].price,
                itemList.bagItems[1].price,
                itemList.bagItems[2].price,
                itemList.bagItems[3].price, () {
              setState(() {
                Navigator.pushNamed(context, '/product');
              });
            }),
            //fashion
            articleWidget(
                'Fashion',
                itemList.fashionItems[0].image,
                itemList.fashionItems[1].image,
                itemList.fashionItems[2].image,
                itemList.fashionItems[3].image,
                itemList.fashionItems[0].itemName,
                itemList.fashionItems[1].itemName,
                itemList.fashionItems[2].itemName,
                itemList.fashionItems[3].itemName,
                itemList.fashionItems[0].price,
                itemList.fashionItems[1].price,
                itemList.fashionItems[2].price,
                itemList.fashionItems[3].price, () {
              setState(() {
                Navigator.pushNamed(context, '/product');
              });
            }),
          ],
        ),
      ),
    );
  }
}
