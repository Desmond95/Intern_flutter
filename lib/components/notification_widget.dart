import 'package:flutter/material.dart';
import 'constants.dart';

class FeedWidget extends StatelessWidget {
  FeedWidget(
      {this.feedImage,
      this.icon,
      this.topicFeed,
      this.textFeed,
      this.dateFeed,
      this.feedIndex});

  final AssetImage feedImage;
  final IconData icon;
  final String topicFeed, textFeed, dateFeed;
  final bool feedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                feedIndex
                    ? Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            //  border: Border.all(color: Colors.red),
                            image: DecorationImage(
                              image: feedImage,
                              fit: BoxFit.fitHeight,
                            )),
                      )
                    : Icon(
                        icon,
                        color: Color(0xFFF4D50A),
                      )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topicFeed,
                  style: kLabelTextStyleBlueArticle,
                ),
                Text(textFeed,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: kIconColor,
                    )),
                Text(
                  dateFeed,
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    color: Color(0xFF0B0F82),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
