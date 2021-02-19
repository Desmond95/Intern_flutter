import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/inputfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InputField(
                        hint: 'Search Product',
                        labelText: null,
                        passwordhidden: false,
                        prefixIcon: Icons.search,
                        suffixIcon2: Icons.send,
                        padding: EdgeInsets.only(left: 10, right: 10),
                      ),
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 30,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: CarouselWidgetPage(),
                ),
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
                                articleImage: AssetImage('images/cakes.jpg'),
                                articleItem: 'Cake',
                                articlePrice: '20,000FCFA',
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
                                    AssetImage('images/doughnuts.jpg'),
                                articleItem: 'Doughnut',
                                articlePrice: '10,000FCFA',
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage: AssetImage('images/pies.jpg'),
                                articleItem: 'Pies',
                                articlePrice: '20,000FCFA',
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage: AssetImage('images/dishes.jpg'),
                                articleItem: 'Dishes',
                                articlePrice: '25,000FCFA',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                                articleImage: AssetImage('images/cakes.jpg'),
                                articleItem: 'Cake',
                                articlePrice: '20,000FCFA',
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
                                    AssetImage('images/doughnuts.jpg'),
                                articleItem: 'Doughnut',
                                articlePrice: '10,000FCFA',
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage: AssetImage('images/pies.jpg'),
                                articleItem: 'Pies',
                                articlePrice: '20,000FCFA',
                              ),
                            ),
                            CardArticle(
                              onPress: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/product');
                                });
                              },
                              cardChild: ArticleContent(
                                articleImage: AssetImage('images/dishes.jpg'),
                                articleItem: 'Dishes',
                                articlePrice: '25,000FCFA',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BottomAppBar(
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      Icon(Icons.search),
                      Icon(
                        Icons.add_shopping_cart,
                      ),
                      Icon(Icons.local_offer_outlined),
                      Icon(Icons.account_box_outlined)
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
