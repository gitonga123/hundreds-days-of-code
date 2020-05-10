import 'package:flutter/material.dart';
import 'http_helper.dart';

class MovieHome extends StatefulWidget {
  @override
  _MovieHomeState createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  String result;
  HttpHelper helper;
  @override
  void initState() {
    helper = HttpHelper();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    helper.getUpcoming().then(
        (value) {
          setState(() {
            result = value;
          });
        }
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
            color: Colors.grey[100],
            child: Text(result),
          )
      ),
    );
  }
}
