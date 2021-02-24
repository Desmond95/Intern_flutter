import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/item_list.dart';
import 'package:fast_shop/components/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationActivitiesPage extends StatefulWidget {
  @override
  _NotificationActivitiesPageState createState() =>
      _NotificationActivitiesPageState();
}

ItemList itemList = ItemList();
bool feedPage = false;

class _NotificationActivitiesPageState
    extends State<NotificationActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 1,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: kIconColor),
          title: Text(
            'Activities',
            style: kLabelTextStyleBlue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              FeedWidget(
                icon: Icons.swap_horiz_outlined,
                topicFeed: 'Transaction Nike Air Zoom Product',
                textFeed:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                dateFeed: 'April 30, 2014 1:01 PM',
                feedIndex: feedPage,
              ),
              FeedWidget(
                icon: Icons.swap_horiz_outlined,
                topicFeed: 'Transaction Nike Air Zoom Product',
                textFeed:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                dateFeed: 'April 30, 2014 1:01 PM',
                feedIndex: feedPage,
              ),
              FeedWidget(
                icon: Icons.swap_horiz_outlined,
                topicFeed: 'Transaction Nike Air Zoom Product',
                textFeed:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                dateFeed: 'April 30, 2014 1:01 PM',
                feedIndex: feedPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
