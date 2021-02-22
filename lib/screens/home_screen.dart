import 'package:fast_shop/components/article_content.dart';
import 'package:fast_shop/components/card_article.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/horizontal_list.dart';
import 'package:fast_shop/components/inputfield.dart';
//import 'package:fast_shop/components/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                HorizontalList(
                                  assetImage:
                                      AssetImage('images/icons/cake.png'),
                                  itemName: 'Pastries',
                                ),
                                HorizontalList(
                                  assetImage:
                                      AssetImage('images/icons/dress.png'),
                                  itemName: 'Fashion',
                                ),
                                HorizontalList(
                                  assetImage:
                                      AssetImage('images/icons/man bag.png'),
                                  itemName: 'Man At Work',
                                ),
                                HorizontalList(
                                  assetImage:
                                      AssetImage('images/icons/woman bag.png'),
                                  itemName: 'Bags',
                                ),
                                HorizontalList(
                                  assetImage: AssetImage(
                                      'images/icons/woman shoes.png'),
                                  itemName: 'Shoes',
                                )
                              ])),
                      Container(
                        child: Padding(
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
                                articleImage: AssetImage(
                                    'images/pastries/vanilla cream.jpg'),
                                articleItem: 'Chocolate',
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
                                articleImage:
                                    AssetImage('images/pastries/doughnuts.jpg'),
                                articleItem: 'Doughnut',
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
                                    AssetImage('images/pastries/hamburger.jpg'),
                                articleItem: 'Hamburger',
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
                                    AssetImage('images/bags/bag2.jpg'),
                                articleItem: 'Versace',
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
                                articleImage:
                                    AssetImage('images/bags/bag3.jpg'),
                                articleItem: 'Quality bag',
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
                                    AssetImage('images/bags/bag4.jpg'),
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
<<<<<<< HEAD
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
                                    AssetImage('images/fashion/gown.jpg'),
                                articleItem: 'Gown',
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
                                articleImage:
                                    AssetImage('images/fashion/gown2.jpg'),
                                articleItem: 'Gown',
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
                                    AssetImage('images/fashion/robe.jpg'),
                                articleItem: 'Robe',
                                articlePrice: '25,000FCFA',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
=======
                // NavigationBar(),
>>>>>>> 97460d22d9901706e42ede89ea5439c7882d536a
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(
                Icons.home_outlined,
                color: Color(0xFF40BFF),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Color(0xFF40BFF),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
              ),
              activeIcon: Icon(
                Icons.add_shopping_cart,
                color: Color(0xFF40BFFF),
              ),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
                
              ),
              activeIcon: Icon(
                Icons.local_offer_outlined,
                color: Color(0xFF40BFFF),
              ),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_outlined,
                color: Colors.grey.shade800,
              ),
              activeIcon: Icon(
                Icons.account_box_outlined,
                color: Color(0xFF40BFFF),
              ),
              label: 'Account',
              //activeIcon:
            ),
          ],
        ),
      ),
    );
  }
}
