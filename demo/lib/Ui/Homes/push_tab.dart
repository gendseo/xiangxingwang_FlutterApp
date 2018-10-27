import 'package:flutter/material.dart';

import '../list_page.dart';

class PushTab extends StatefulWidget {
  _PushTabState createState() => _PushTabState();
}

class _PushTabState extends State<PushTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => ListPage(),
    );
  }
}
