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
        clipper: MyCustomCliper(),
        child: Image.asset("assets/images/ball4.png"),
      ),
    )
    );
  }
}

class MyCustomCliper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 200, 100);
  }
  bool shouldReclip(oldClipper) {
    return false;
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({width}) : super(listenable: width);

  Animation<double> get width => listenable;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Hello World'),
      child: Text('Click Me!'),
      borderSide: BorderSide(width: width.value),
    );
  }
}

class AnimatedWidgetWow extends StatefulWidget {
  @override
  _AnimatedWidgetState createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidgetWow> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ButtonTransition()
      ),
    );
  }
}

