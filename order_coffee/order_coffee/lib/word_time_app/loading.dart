import 'package:flutter/material.dart';
import 'package:ordercoffee/word_time_app/word_time_class.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  WorldTime _worldTime = WorldTime(timezone: "Africa/Nairobi");
  @override
  void initState() {
    super.initState();
    _worldTime.getTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("Loading screen"),
      ),
    );
  }
}
