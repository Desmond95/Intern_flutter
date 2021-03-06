import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

ItemList itemList = ItemList();

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    width: MediaQuery.of(context).size.width,
                    articleImage: itemList.promoItems[i].image,
                    articleItem: itemList.promoItems[i].itemName,
                    articlePrice: itemList.promoItems[i].price,
                    articlePromoPrice: itemList.promoItems[i].price -
                        0.25 * itemList.promoItems[i].price,
                  ),
                  onPress: () {
                    Navigator.pushNamed(context, '/product');
                  },
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
