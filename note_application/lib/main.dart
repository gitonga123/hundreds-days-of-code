import 'package:flutter/material.dart';
import 'package:noteapplication/screens/note_detail.dart';
import 'package:noteapplication/screens/note_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigoAccent,
        primaryColor: Colors.indigo
      ),
      home: NoteList(),
    );
  }
}
