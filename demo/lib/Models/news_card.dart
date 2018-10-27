import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    Widget cardBottom() => Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Colors.green,
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
              Text(
                "3000/月",
                style: TextStyle(color: Colors.red),
              ),
              Expanded(
                flex: 1,
                child: Text(""),
              ),
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
          ),
        );

    Widget cardRight() => Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  maxLines: 1,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "1111", style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "@2222 · ", style: TextStyle(color: Colors.grey)),
                    TextSpan(text: "3333", style: TextStyle(color: Colors.grey))
                  ]),
                ),
              ),
              Row(
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
                        "images/1.jpg",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(
                      text: "为了获得更快的开发体验，请尝试使用Flutter的热重载功能" + "...",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              cardBottom(),
            ],
          ),
        );

    Widget _card() => Card(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    radius: 20, backgroundImage: AssetImage("images/7.png")),
                cardRight(),
              ],
            ),
          ),
        );
    return _card();
  }
}
