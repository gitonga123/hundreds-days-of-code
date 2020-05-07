import 'package:flutter/material.dart';
import 'bat.dart';
import 'ball.dart';

class Pong extends StatefulWidget {
  @override
  _PongState createState() => _PongState();
}

class _PongState extends State<Pong> {
  double width;
  double height;
  double posX = 0;
  double posY = 0;
  double batWidth = 0;
  double batHeight = 0;
  double batPosition = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        return Stack(
          children: <Widget>[
            Positioned(
              child: Ball(),
              top: 0,
            ),
            Positioned(
              child: Bat(200, 25),
              bottom: 0,
            )
          ],
        );
      },
    );
  }
}
