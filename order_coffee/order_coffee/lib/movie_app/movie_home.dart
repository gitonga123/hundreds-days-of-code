import 'package:flutter/material.dart';

class MovieHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
            color: Colors.white70,
          )
      ),
    );
  }
}
