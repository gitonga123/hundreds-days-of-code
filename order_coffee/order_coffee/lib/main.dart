import 'package:flutter/material.dart';
import 'package:ordercoffee/screens/dicee.dart';
import 'package:ordercoffee/screens/top_ten_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        body: TopTenWidgets(),
      ),
    );
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'MICARD',
//      theme:
//          ThemeData(primaryColor: Colors.teal, accentColor: Colors.tealAccent),
//      home: new Scaffold(
//        backgroundColor: Colors.teal                                          ,
//        appBar: new AppBar(
//          title: Text("MI CARD"),
//        ),
//        body: Container(
//
//        ),
//      ),
//    );
  }
}
