import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
                onPressed: () {
                    updateDiceNumber();
                },
              ),
            ),
            Expanded(
                child: FlatButton(
                  child: Image.asset('assets/images/dice$rightDiceNumber.png'),
                  onPressed: () {
                      updateDiceNumber();
                  },
                )),
          ],
        ),
      ),
    );
  }

  void updateDiceNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
