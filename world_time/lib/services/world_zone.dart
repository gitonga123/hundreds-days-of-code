//
import 'package:http/http.dart';
import 'dart:convert';

class WorldTimeZone {
  String url = 'https://worldtimeapi.org/api/timezone';
  List timezones = [];
  Future<void> getTimeZones() async {
    try {
      Response response = await get(url);
      this.timezones = jsonDecode(response.body);
      print(response.body);
    } catch(e) {
      print("Cought Error: $e");
    }
  }
}
