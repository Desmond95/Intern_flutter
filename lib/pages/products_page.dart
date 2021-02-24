import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_shop/components/carousel_slider.dart';
import 'package:fast_shop/components/category_container.dart';
import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductPage extends StatelessWidget {
  // ProductPage(this.i);
  // final int i;

  @override
  Widget build(BuildContext context) {
    return Product();
  }
}

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

IconData _iconHeart = Icons.favorite_outline;
double rating = 0;
Color _color;

bool isPressed = false;

class _ProductState extends State<Product> {
  int _current;
  ItemList itemList = ItemList();
  @override
  Widget build(BuildContext context) {
    // final AssetImage image = ModalRoute.of(context).settings.arguments;
    //  final String productName = ModalRoute.of(context).settings.arguments;
    //   final String productPrice = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          toolbarHeight: 80,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Product Name',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      initialPage: 0,
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      pauseAutoPlayOnTouch: true,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                    items: [0, 1, 2].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  // border: Border.all(color: Colors.red),
                                  image: DecorationImage(
                                      image: itemList.bagItems[i].image,
                                      fit: BoxFit.cover)),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(itemList.promoItems, (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color(0xFFF4D50A)
                              : Color(0xFFEBF0FF),
                        ),
                      );
                    }),
                  ),
                  ListTile(
                      title: Text(
                        'productName',
                        style: kLabelTextStyleBlue,
                      ),
                      trailing: IconButton(
                        icon: Icon(_iconHeart),
                        color: _color,
                        onPressed: onPressHeart,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: Theme.of(context).copyWith(
                              primaryColor: Color(0xFFF4D50A),
                            ),
                            child: SmoothStarRating(
                                rating: rating,
                                isReadOnly: false,
                                size: 25,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                starCount: 5,
                                allowHalfRating: true,
                                spacing: 2.0,
                                onRated: (value) {
                                  setState(() {
                                    rating = value;
                                    print("rating value -> $value");
                                  });
                                }),
                          ),
                          Text(
                            'Price',
                            style: kLabelTextStyleBlueArticle,
                          )
                        ],
                      )),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text(
                      'Specification',
                      style: kLabelTextStyleBlue,
                    ),
                  ),
                  ListTile(
                      leading: Text(
                        'Shown',
                        style: kLabelTextStyleBlueArticle,
                      ),
                      trailing: Container(
                        width: 150,
                        child: Text(
                          'Laser Blue/Anthracite/Watermelon/White',
                          overflow: TextOverflow.visible,
                          maxLines: 5,
                          softWrap: true,
                          textAlign: TextAlign.right,
                        ),
                      )),
                  ListTile(
                      leading: Text(
                        'Style',
                        style: kLabelTextStyleBlueArticle,
                      ),
                      trailing: Container(
                        width: 150,
                        child: Text(
                          'CD0113-400',
                          overflow: TextOverflow.visible,
                          maxLines: 5,
                          softWrap: true,
                          textAlign: TextAlign.right,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text(
                      'The Nike Air Max 270 React ENG combines a full-length React fram midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                      style: kLabelDescriptionArticle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Review Product',
                          style: kLabelTextStyleBlue,
                        ),
                        Text(
                          'See More',
                          style: kLabelTextStyleBlueArticle,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Theme(
                          data: Theme.of(context).copyWith(
                            primaryColor: Color(0xFFF4D50A),
                          ),
                          child: SmoothStarRating(
                            rating: rating,
                            isReadOnly: true,
                            size: 16,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '4.5 (5 Review)',
                          style: kLabelCategoryArticle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SquareButton(
                    buttonText: 'Add to Cart',
                    onPress: () {
                      setState(() {
                        Navigator.pushNamed(context, '/home',
                            arguments: 'cartpage');
                      });
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }

  void onPressHeart() {
    setState(() {
      if (isPressed == false) {
        isPressed = true;
        _color = kRedColor;
        _iconHeart = Icons.favorite;
      } else {
        isPressed = false;
        _color = null;
        _iconHeart = Icons.favorite_outline;
      }
    });
  }
}
