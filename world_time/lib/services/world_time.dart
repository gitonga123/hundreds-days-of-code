import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the ui;
  String time; // time in that location
  String flag; // url to the flag of the location
  String url; //url to the api call
  bool isDaytime; // true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // create a date time object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // set the time property
      this.isDaytime = now.hour > 6 && now.hour < 19 ? true : false;
      this.time = DateFormat.jm().format(now);
    } catch (e) {
      print("Caught error: $e");
      this.time = 'could not ge time data';
    }
  }

  String getDayTimeImage() {
    return this.isDaytime ? 'assets/images/day.png' : 'assets/images/night.png';
  }

}
