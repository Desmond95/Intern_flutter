import 'package:flutter/material.dart';

import 'constants.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList(
      {Key key, @required this.itemName, this.assetImage, this.padding});

  final AssetImage assetImage;
  final String itemName;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(children: [
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: Colors.blue.shade100),
            ),
            child: Image(
              image: assetImage,
              width: 25,
              height: 25,
              color: Color(0xFFF4D50A),
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          itemName,
          style: kLabelCategoryArticle,
        )
      ]),
    );
  }
}
