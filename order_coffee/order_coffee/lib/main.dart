import 'package:flutter/material.dart';
import 'package:ordercoffee/forms/form_continue.dart';
import 'package:ordercoffee/forms/form_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forms in flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: MyCustomForm()
    );
  }
}
