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
      itemBuilder: (BuildContext context, int index) => NewsCard1(),
    );
  }
}
