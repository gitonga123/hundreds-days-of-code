import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/images/dice1.png')),
          Expanded(child: Image.asset('assets/images/dice1.png'))
        ],
      ),
    );
  }
}
