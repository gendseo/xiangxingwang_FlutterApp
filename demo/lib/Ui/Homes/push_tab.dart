import 'package:flutter/material.dart';

import '../../Models/list_page.dart';
import '../../Models/news_card.dart';
import '../../Models/news_card1.dart';

class PushTab extends StatefulWidget {
  _PushTabState createState() => _PushTabState();
}

class _PushTabState extends State<PushTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        if (index % 3 == 0) {
          print(index);
          return ListPage();
        } else if (index % 2 == 0) {
          return NewsCard();
        } else {
          return NewsCard1();
        }
      },
    );
  }
}
