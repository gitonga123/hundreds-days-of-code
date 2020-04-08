import 'package:flutter/material.dart';
import 'package:ordercoffee/screens/wrapper.dart';
import 'package:ordercoffee/services/auth.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learning Flutter with Firebase',
        home: Wrapper(),
      ),
    );
  }
}

