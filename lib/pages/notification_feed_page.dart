import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:fast_shop/components/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationFeedPage extends StatefulWidget {
  @override
  _NotificationFeedPageState createState() => _NotificationFeedPageState();
}

ItemList itemList = ItemList();
bool feedPage = true;

class _NotificationFeedPageState extends State<NotificationFeedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          elevation: 1,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Feed',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              FeedWidget(
                feedImage: itemList.bagItems[0].image,
                textFeed:
                    'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                topicFeed: 'New Product',
                dateFeed: 'January 23 2021 10:34',
                feedIndex: feedPage,
              ),
              FeedWidget(
                feedImage: itemList.bagItems[1].image,
                textFeed:
                    'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                topicFeed: 'New Product',
                dateFeed: 'January 23 2021 10:34',
                feedIndex: feedPage,
              ),
              FeedWidget(
                feedImage: itemList.bagItems[2].image,
                textFeed:
                    'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                topicFeed: 'New Product',
                dateFeed: 'January 23 2021 10:34',
                feedIndex: feedPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
