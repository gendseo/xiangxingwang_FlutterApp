import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        color: Colors.white70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(child: Image.asset("images/7.png")),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "会飞的鱼",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                        Text(
                          "三天前",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "前端工程师",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset("images/1.jpg"),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Expanded(
                    child: Image.asset("images/2.jpg"),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Expanded(
                    child: Image.asset("images/3.jpg"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                  "为了获得更快的开发体验，请尝试使用Flutter的热重载功能。 热重载允许您修改代码并查看更改，而无需完全重新启动应用程序。"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    color: Colors.red[300],
                    child: InkWell(
                      highlightColor: Colors.redAccent,
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 3.0, 12.0, 3.0),
                          child: Text("招聘",
                              style: TextStyle(
                                color: Colors.white,
                              ))),
                      onTap: () {},
                    ),
                  ),
                  FlatButton.icon(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    label: Text("1314"),
                    onPressed: () {},
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(""),
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
