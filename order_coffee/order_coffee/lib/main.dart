import 'package:flutter/material.dart';
import 'package:ordercoffee/screens/wrapper.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter with Firebase',
      home: Wrapper(),
    );
  }
}

