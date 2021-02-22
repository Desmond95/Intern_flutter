import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList({Key key, @required this.itemName, this.assetImage});

  final AssetImage assetImage;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: Colors.blue.shade100),
            ),
            child: Image(
              image: assetImage,
              width: 30,
              height: 30,
              color: Color(0xFFF4D50A),
            )),
        SizedBox(
          height: 8,
        ),
        Text(itemName)
      ]),
    );
  }
}
