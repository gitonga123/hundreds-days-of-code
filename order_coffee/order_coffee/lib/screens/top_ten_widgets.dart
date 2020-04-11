import 'package:flutter/material.dart';

class TopTenWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget();
  }
}

class SafeAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.laptop_chromebook),
              title: Text('Chrome Book'),
              trailing: Text("10.55"),
            ),
            ListTile(
              leading: Icon(Icons.laptop_mac),
              title: Text('Mac Book'),
              trailing: Text("10.25"),
            ),
            ListTile(
              leading: Icon(Icons.laptop_windows),
              title: Text('Windows Laptop '),
              trailing: Text("10.05"),
            ),
          ],
        )
    );
  }
}
