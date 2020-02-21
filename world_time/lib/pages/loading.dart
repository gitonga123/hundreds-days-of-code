import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
     WorldTime instanceTime  = WorldTime(location: 'Nairobi', flag: 'zambia.png', url: 'Africa/Nairobi');
     await instanceTime.getTime();
     Navigator.pushReplacementNamed(
         context, '/home',
         arguments: {
           'location': instanceTime.location,
           'flag': instanceTime.flag,
           'time': instanceTime.time,
           'daytimeImage': instanceTime.getDayTimeImage(),
           'isDaytime': instanceTime.isDaytime
         });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setUpWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 80.0,
        )
      )
    );
  }
}

