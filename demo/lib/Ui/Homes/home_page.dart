import 'package:flutter/material.dart';

import 'push_tab.dart';
import 'hot_tab.dart';
import 'qa_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tabViews = <Widget>[];
  final _tabs = <Tab>[Tab(text: "热门"), Tab(text: "推荐"), Tab(text: "问答")];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabViews..add(HotTab())..add(PushTab())..add(QATab());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("测试网"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: _tabViews,
        ),
      ),
    );
  }
}
