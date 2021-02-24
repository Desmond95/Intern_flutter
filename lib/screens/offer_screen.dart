import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

ItemList itemList = ItemList();
double articlePrice = 20000;

double articlePromo = articlePrice - (25 / 100 * articlePrice);

class _OfferScreenState extends State<OfferScreen> {
  var onPress;

  @override
  Widget build(BuildContext context) {
    return
        // child: Scaffold(
        // appBar: AppBar(
        //   bottomOpacity: 0.5,
        //   toolbarHeight: 80,
        //   iconTheme: IconThemeData(color: kIconColor),
        //   backgroundColor: Colors.white,
        //   title: Text(
        //     'Super Flash Sale',
        //     style: kLabelTextStyleBlue,
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Icon(
        //         Icons.search,
        //         color: kIconColor,
        //         size: 40,
        //       ),
        //     )
        //   ],
        // ),
        SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 500,
              child: GridView.builder(
                itemBuilder: (context, i) => CardArticle(
                  // cardChild: Text(itemsList[i]),
                  cardChild: ArticleContent(
                    articleImage: itemList.promoItems[i].image,
                    articleItem: itemList.promoItems[i].itemName,
                    articlePrice: itemList.promoItems[i].price,
                    articlePromoPrice: itemList.promoItems[i].price -
                        0.25 * itemList.promoItems[i].price,
                  ),
                  onPress: onPress,
                ),
                itemCount: itemList.promoItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
