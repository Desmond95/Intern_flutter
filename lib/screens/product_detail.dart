import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:flutter/material.dart';
// import 'dart:math';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

double articlePrice = 20000;

double articlePromo = articlePrice - (25 / 100 * articlePrice);

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottomOpacity: 0.5,
          toolbarHeight: 80,
          iconTheme: IconThemeData(color: kIconColor),
          backgroundColor: Colors.white,
          title: Text(
            'Super Flash Sale',
            style: kLabelTextStyleBlue,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: kIconColor,
                size: 40,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pastries',
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
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/pastries/cakes.jpg'),
                                articleItem: 'Cake',
                                articlePrice: articlePrice,
                                articlePromoPrice: articlePromo,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage: AssetImage(
                                    'images/pastries/vanilla cream.jpg'),
                                articleItem: 'Chocolate',
                                articlePromoPrice: articlePromo,
                                articlePrice: articlePrice,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/pastries/doughnuts.jpg'),
                                articleItem: 'Doughnut',
                                articlePromoPrice: 7500,
                                articlePrice: 5000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/pastries/hamburger.jpg'),
                                articleItem: 'Hamburger',
                                articlePromoPrice: 5000,
                                articlePrice: 2500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //bags
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bags',
                              style: kLabelTextStyleBlue,
                            ),
                            Text(
                              'See More',
                              style: kLabelTextStyleYellow,
                            ),
                          ],
                        ),
                      ),
                      //bags
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage: AssetImage('images/bags/bag.jpg'),
                                articleItem: 'Gucci bag',
                                articlePrice: 2000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/bags/bag2.jpg'),
                                articleItem: 'Versace',
                                articlePrice: 10000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/bags/bag3.jpg'),
                                articleItem: 'Quality bag',
                                articlePrice: 20000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/bags/bag4.jpg'),
                                articleItem: 'Dishes',
                                articlePrice: 25000,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //fashion
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fashion',
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
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/fashion/dresses.jpg'),
                                articleItem: 'Gown',
                                articlePrice: 20000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/fashion/gown.jpg'),
                                articleItem: 'Gown',
                                articlePrice: 10000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/fashion/gown2.jpg'),
                                articleItem: 'Gown',
                                articlePrice: 20000,
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage:
                                    AssetImage('images/fashion/robe.jpg'),
                                articleItem: 'Robe',
                                articlePrice: 25000,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
