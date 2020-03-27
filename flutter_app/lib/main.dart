import 'package:flutter/material.dart';
import 'package:flutterapp/app_screens/first_screen.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exploring Flutter UI Widgets",
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}
