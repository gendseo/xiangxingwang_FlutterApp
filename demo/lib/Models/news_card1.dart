import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCard1 extends StatefulWidget {
  _NewsCard1State createState() => _NewsCard1State();
}

class _NewsCard1State extends State<NewsCard1> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    // double _screenHeight = MediaQuery.of(context).size.height;
    double _xxwScreenWidth = _screenWidth - 36;

    Widget _link(String link) => Card(
          color: Colors.brown.shade100,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text("$link",
                  style: TextStyle(
                    color: Colors.black,
                  ))),
        );

    Widget _media(double _mediaWidth, double _mediaHeight, String file) =>
        Container(
          width: _mediaWidth,
          height: _mediaHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(file),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(3),
            ),
          ),
        );

    Widget _content() => Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: RichText(
            maxLines: 2,
            text: TextSpan(
                text: "工作时间弹性，上下班自由，公司地段好，有大牛带入门，薪资待遇好，具体面谈,有机会组团旅游。",
                style: TextStyle(color: Colors.black)),
          ),
        );

    Widget _links() => Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: Row(
              children: <Widget>[
                _link("供吃住"),
                _link("五险一金"),
                _link("待遇好"),
                _link("有升值机会"),
              ],
            ),
          ),
        );

    Widget _footer() => Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: CircleAvatar(
                    radius: 14, backgroundImage: AssetImage("images/7.png")),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "会飞的鱼",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "三天前",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
              Expanded(
                child: Text(""),
              ),
              Row(
                children: <Widget>[
                  FlatButton.icon(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    label: Text("1314"),
                    onPressed: () {},
                  ),
                  FlatButton.icon(
                    icon: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                    label: Text("1314"),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        );

    Widget _header() => Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Card(
                color: Colors.green,
                child: InkWell(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                      child: Text("招聘",
                          style: TextStyle(
                            color: Colors.white,
                          ))),
                  onTap: () {},
                ),
              ),
              Container(
                child: Text("前端开发工程师,前端开发工程师",
                    style: TextStyle(color: Colors.black)),
              ),
              Card(
                color: Colors.black54,
                child: InkWell(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                      child: Text("3000/月",
                          style: TextStyle(
                            color: Colors.white,
                          ))),
                  onTap: () {},
                ),
              ),
            ],
          ),
        );

    Widget _medias() => Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _media(_xxwScreenWidth / 3, _xxwScreenWidth / 4, "images/1.jpg"),
              _media(_xxwScreenWidth / 3, _xxwScreenWidth / 4, "images/3.jpg"),
              _media(_xxwScreenWidth / 3, _xxwScreenWidth / 4, "images/2.jpg"),
            ],
          ),
        );

    Widget _card() => Card(
          // color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _header(),
                _medias(),
                _content(),
                _links(),
                _footer(),
              ],
            ),
          ),
        );
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 4),
      child: _card(),
    );
  }
}
