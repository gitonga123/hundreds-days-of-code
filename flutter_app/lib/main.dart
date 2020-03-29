import 'package:flutter/material.dart';
import 'package:flutterapp/app_screens/first_screen.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exploring Flutter UI Widgets",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Basic List View"
          ),
        ),
        body: getListView(),
      )
    );
  }
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape Tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
        subtitle: Text("My Computers"),
        trailing: Icon(Icons.computer),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Yet another element in List"),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listView;
}
