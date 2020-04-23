import 'package:flutter/material.dart';
import 'package:ordercoffee/random_words.dart';
import 'package:ordercoffee/screens/home/home.dart';
import 'package:ordercoffee/screens/id_card.dart';
import 'package:ordercoffee/word_time_app/choose_location.dart';
import 'package:ordercoffee/word_time_app/home.dart';
import 'package:ordercoffee/word_time_app/loading.dart';
// import 'package:ordercoffee/screens/quiz_app.dart';
//import 'package:ordercoffee/screens/story_page.dart';
// import 'package:ordercoffee/screens/dicee.dart';
// import 'package:ordercoffee/screens/magic_ball.dart';
//import 'package:ordercoffee/screens/xylophone.dart';
//import 'package:ordercoffee/screens/top_ten_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => WorldTimeHome(),
        '/location': (context) => ChooseLocation()
      },
    );
  }
}
