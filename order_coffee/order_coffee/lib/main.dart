import 'package:flutter/material.dart';
import 'package:ordercoffee/pong_game/main_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pong Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage()
      home: PongMainPage()
    );
  }
}
