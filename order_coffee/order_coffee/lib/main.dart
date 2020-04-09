import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Continues',
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: new Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: new AppBar(
          title: Text("Flutter Continues"),
        ),
        body: Center(
          child: Image(
              image: AssetImage("assets/images/diamond.png")
          ),
        ),
      ),
    );
  }
}

