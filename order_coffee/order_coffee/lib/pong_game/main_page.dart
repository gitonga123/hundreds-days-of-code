import 'package:flutter/material.dart';
import 'package:ordercoffee/pong_game/pong.dart';

class PongMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Pong'),
      ),
      body: SafeArea(
        child: Pong(),
      ),
    );
  }
}
