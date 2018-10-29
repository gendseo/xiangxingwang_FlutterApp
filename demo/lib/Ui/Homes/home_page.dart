import 'package:flutter/material.dart';

import 'push_tab.dart';
import 'hot_tab.dart';
import 'qa_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _appBarElevation = 0.0;

  bool _handleScrollNotification(ScrollNotification notification) {
    final double elevation =
        notification.metrics.extentBefore <= 0.0 ? 0.0 : 1.0;
    if (elevation != _appBarElevation) {
      setState(() {
        _appBarElevation = elevation;
      });
    }
    return false;
  }

  final _tabViews = <Widget>[];

  final _tabs = <Tab>[
    Tab(
        child: Text(
      "热门",
      style: TextStyle(color: Colors.black),
    )),
    Tab(
      child: Text(
        "推荐",
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        "问答",
        style: TextStyle(color: Colors.black),
      ),
    )
  ];

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
          elevation: _appBarElevation,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Color(0xFFD9D9D9))))),
          title: Text(
            "测试网",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: _tabs,
          ),
        ),
        body: NotificationListener<ScrollNotification>(
            onNotification: _handleScrollNotification,
            child: TabBarView(
              children: _tabViews,
            )),
      ),
    );
  }
}
