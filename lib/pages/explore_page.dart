import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/horizontal_list.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

ItemList itemList = ItemList();

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Explore',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Men Fashion',
                      style: kLabelTextStyleBlueArticle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 175,
                        child: GridView.count(crossAxisCount: 4, children: [
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[1].itemName,
                            assetImage: itemList.iconItems[1].image,
                          ),
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[2].itemName,
                            assetImage: itemList.iconItems[2].image,
                          ),
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[3].itemName,
                            assetImage: itemList.iconItems[3].image,
                          ),
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[4].itemName,
                            assetImage: itemList.iconItems[4].image,
                          ),
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[5].itemName,
                            assetImage: itemList.iconItems[5].image,
                          ),
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[6].itemName,
                            assetImage: itemList.iconItems[6].image,
                          ),
                          HorizontalList(
                            padding: EdgeInsets.all(0),
                            itemName: itemList.iconItems[7].itemName,
                            assetImage: itemList.iconItems[7].image,
                          ),
                        ])),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Women Fashion',
                      style: kLabelTextStyleBlueArticle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 175,
                        child: GridView.count(
                            primary: false,
                            crossAxisSpacing: 2,
                            crossAxisCount: 4,
                            children: [
                              HorizontalList(
                                padding: EdgeInsets.all(0),
                                assetImage: itemList.iconItems[8].image,
                                itemName: itemList.iconItems[8].itemName,
                              ),
                              HorizontalList(
                                padding: EdgeInsets.all(0),
                                assetImage: itemList.iconItems[9].image,
                                itemName: itemList.iconItems[9].itemName,
                              ),
                              HorizontalList(
                                padding: EdgeInsets.all(0),
                                assetImage: itemList.iconItems[10].image,
                                itemName: itemList.iconItems[10].itemName,
                              ),
                              HorizontalList(
                                padding: EdgeInsets.all(0),
                                assetImage: itemList.iconItems[11].image,
                                itemName: itemList.iconItems[11].itemName,
                              ),
                              HorizontalList(
                                padding: EdgeInsets.all(0),
                                assetImage: itemList.iconItems[12].image,
                                itemName: itemList.iconItems[12].itemName,
                              ),
                              HorizontalList(
                                padding: EdgeInsets.all(0),
                                assetImage: itemList.iconItems[13].image,
                                itemName: itemList.iconItems[13].itemName,
                              )
                            ])),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
