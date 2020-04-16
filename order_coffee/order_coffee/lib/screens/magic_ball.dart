import 'package:flutter/material.dart';
import 'dart:math';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball(
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print(ballNumber);
              });
              print("I got clicked");
            },
            child: Image.asset("assets/images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}

