import 'package:flutter/material.dart';

class NewsCard1 extends StatefulWidget {
  _NewsCard1State createState() => _NewsCard1State();
}

class _NewsCard1State extends State<NewsCard1> {
  @override
  Widget build(BuildContext context) {
    Widget _content() => RichText(
          maxLines: 2,
          text: TextSpan(
              text: "工作时间弹性，上下班自由，公司地段好，有大牛带入门，薪资待遇好，具体面谈,有机会组团旅游。",
              style: TextStyle(color: Colors.black)),
        );

    Widget _footer() => Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: CircleAvatar(
                  radius: 18, backgroundImage: AssetImage("images/7.png")),
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
                  style: TextStyle(color: Colors.black54, fontSize: 12.0),
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
        );

    Widget _header() => Row(
          children: <Widget>[
            Card(
              color: Colors.green.shade300,
              child: InkWell(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 3.0, 12.0, 3.0),
                    child: Text("招聘",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                onTap: () {},
              ),
            ),
            Expanded(
              child: RichText(
                maxLines: 1,
                text: TextSpan(
                    text: "前端开发工程师", style: TextStyle(color: Colors.black)),
              ),
            ),
            Card(
              color: Colors.red.shade300,
              child: InkWell(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 3.0, 12.0, 3.0),
                    child: Text("3000/月",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                onTap: () {},
              ),
            )
          ],
        );

    Widget _media() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "images/1.jpg",
                ),
              ),
            ),
            SizedBox(
              width: 2.0,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "images/3.jpg",
                ),
              ),
            ),
            SizedBox(
              width: 2.0,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "images/2.jpg",
                ),
              ),
            ),
          ],
        );

    Widget _card() => Card(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _header(),
                _media(),
                _content(),
                _footer(),
              ],
            ),
          ),
        );
    return _card();
  }
}
