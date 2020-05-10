import 'package:flutter/material.dart';
import 'package:ordercoffee/movie_app/movie_home.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pong Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: MyHomePage()
      home: MovieHome()
    );
  }
}
