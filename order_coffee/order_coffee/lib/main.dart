import 'package:flutter/material.dart';
// import 'package:ordercoffee/screens/quiz_app.dart';
//import 'package:ordercoffee/screens/story_page.dart';
// import 'package:ordercoffee/screens/dicee.dart';
// import 'package:ordercoffee/screens/magic_ball.dart';
import 'package:ordercoffee/screens/xylophone.dart';
import 'package:ordercoffee/screens/top_ten_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.red,
//        appBar: new AppBar(
//          title: Text("Ask Me Anything"),
//        ),
        body: SizedBoxWidget(),
      ),
    );
  }
}
