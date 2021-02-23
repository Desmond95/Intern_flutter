import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/notification_widget.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    bool feedPage = false;
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
                icon: Icons.local_offer_outlined,
                topicFeed: 'The Best Title',
                textFeed:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                dateFeed: 'April 30, 2014 1:01 PM',
                feedIndex: feedPage,
              ),
              FeedWidget(
                icon: Icons.local_offer_outlined,
                topicFeed: 'SUMMER OFFER 98% Cashback',
                textFeed:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
                dateFeed: 'April 30, 2014 1:01 PM',
                feedIndex: feedPage,
              ),
              FeedWidget(
                icon: Icons.local_offer_outlined,
                topicFeed: 'Special Offer 25% OFF',
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
