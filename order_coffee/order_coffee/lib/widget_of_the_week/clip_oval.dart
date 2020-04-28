import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Oval Widget"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
      child: ClipOval(
        clipper: MycustomCliper(),
        child: Image.asset("assets/images/ball4.png"),
      ),
    )
    );
  }
}

class MycustomCliper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 200, 100);
  }
  bool shouldReclip(oldClipper) {
    return false;
  }
}
