import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Homes/home_page.dart';
import 'Topics/topic_page.dart';
import 'Finds/find_page.dart';
import 'Users/user_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  int _currentIndex = 0;
  final List _pages = [];

  final _bottomNavigationBarItemColor = Colors.red;

  List<BottomNavigationBarItem> _bottomNavigationBarItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNavigationBarItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        title: const Text("主页"),
        icon: const Icon(Icons.home),
        backgroundColor: _bottomNavigationBarItemColor,
      ),
      BottomNavigationBarItem(
        title: const Text("话题"),
        icon: const Icon(Icons.apps),
        backgroundColor: _bottomNavigationBarItemColor,
      ),
      BottomNavigationBarItem(
        title: const Text("发现"),
        icon: const Icon(Icons.explore),
        backgroundColor: _bottomNavigationBarItemColor,
      ),
      BottomNavigationBarItem(
        title: const Text("个人"),
        icon: const Icon(Icons.person),
        backgroundColor: _bottomNavigationBarItemColor,
      ),
    ];

    _pages..add(HomePage())..add(TopicPage())..add(FindPage())..add(UserPage());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    Widget _bottomNavigationBar() => BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItem,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF212121),
        scaffoldBackgroundColor: const Color(0xFFEEEEEE),
      ),
      title: "Demo",
      home: Scaffold(
        backgroundColor: const Color(0xFFD50000),
        body: _pages[_currentIndex],
        resizeToAvoidBottomPadding: true,
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }
}
