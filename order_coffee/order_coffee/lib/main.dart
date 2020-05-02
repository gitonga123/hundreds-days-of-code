import 'package:flutter/material.dart';
import 'package:ordercoffee/Todo/home_page.dart';
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
      title: 'Measures Converter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage()
      home: ConverterHome()
    );
  }
}
