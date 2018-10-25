import 'package:flutter/material.dart';

import 'Homes/home_page.dart';
import 'Topics/topic_page.dart';
import 'Finds/find_page.dart';
import 'Users/user_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List _pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages..add(HomePage())..add(TopicPage())..add(UserPage())..add(FindPage());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  final List<BottomNavigationBarItem> _bottomNavigationBarItem =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        title: const Text("主页"), icon: const Icon(Icons.home)),
    BottomNavigationBarItem(
        title: const Text("话题"), icon: const Icon(Icons.apps)),
    BottomNavigationBarItem(
        title: const Text("发现"), icon: const Icon(Icons.explore)),
    BottomNavigationBarItem(
        title: const Text("个人"), icon: const Icon(Icons.person)),
  ];

  Widget _bottomNavigationBar() => BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: _bottomNavigationBarItem,
      onTap: (index) {
        setState(() {
          this._currentIndex = index;
        });
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    ));
  }
}
