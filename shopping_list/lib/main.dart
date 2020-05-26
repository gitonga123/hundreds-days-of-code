import 'package:flutter/material.dart';
import 'package:shoppinglist/screens/shopping_dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ShoppingDashboard(),
    );
  }
}

