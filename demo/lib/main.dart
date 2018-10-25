import 'package:flutter/material.dart';

import 'Ui/my_app.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      title: "Demo",
      home: MyApp(),
    ));
