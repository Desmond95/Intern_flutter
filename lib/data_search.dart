import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/pages/products_page.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  var itemsData;
  final itemsSearched = [
    'Nike',
    'iPhone',
    'Hp',
    'Louis Vuitton',
    'Air max',
    'Nike air',
    'Doughnuts',
    'Handbags',
    'Ashuabi',
    'Bags',
    'Cakes',
    'Dishes',
    'Plates',
  ];
  final recentItems = [
    'Nike',
    'iPhone',
    'Hp',
    'Louis Vuitton',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    // throw UnimplementedError();
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on left of app bar
    // throw UnimplementedError();
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //Show some results based on selection
    // throw UnimplementedError();
    return Center(
        child: Container(
            height: 150,
            width: 150,
            child: Card(
              elevation: 10,
              child: Center(child: Text('')),
            )));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    // throw UnimplementedError();
    final suggestionList = query.isEmpty
        ? recentItems
        : itemsSearched.where((element) => element.contains(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.card_travel),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: suggestionList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(
                      color: Color(0xFF9098B1),
                      fontFamily: 'Poppins',
                    ),
                  )
                ])),
            Divider()
          ],
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
