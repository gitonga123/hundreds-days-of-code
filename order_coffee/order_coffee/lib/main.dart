import 'package:flutter/material.dart';
import 'package:ordercoffee/Todo/home_page.dart';
import 'package:ordercoffee/productivity_timer/home_timer.dart';
import 'package:ordercoffee/unit_converter/convert_home.dart';
import 'package:ordercoffee/widget_of_the_week/clip_oval.dart';
//import 'package:ordercoffee/forms/form_continue.dart';
//import 'package:ordercoffee/forms/form_screen.dart';
//import 'package:ordercoffee/screens/login_screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home: MyHomePage()
      home: ProductivityTimer()
    );
  }
}
