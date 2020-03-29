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
            title: Text("Long List View"),
          ),
          body: getLongListView(),
        ));
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

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");

  return items;
}

Widget getLongListView() {
  var items = getListElements();
  var listView = ListView.builder(
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Text((index + 1).toString()),
        title: Text(items[index]),
        trailing: Icon(Icons.arrow_downward),
        onTap: () {
          debugPrint(
            "Item Number ${items[index]} was tapped"
          );
        },
      );
    },
  );

  return listView;
}
