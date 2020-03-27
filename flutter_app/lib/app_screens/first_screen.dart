import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);

    return "Your lucky number is: ${luckyNumber}";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Text(
          "Flight",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 70.0,
            fontFamily: "LiuJianMaoCao",
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}

