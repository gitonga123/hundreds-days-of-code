import 'package:flutter/material.dart';

class TopTenWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WrapWidget();
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

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Wrap(
          direction: Axis.vertical,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              child: Text("Button 1", style: TextStyle(color: Colors.white),),
              color: Colors.red,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Button 2", style: TextStyle(color: Colors.white),),
              color: Colors.green,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Button 3", style: TextStyle(color: Colors.white),),
              color: Colors.black,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Button 4", style: TextStyle(color: Colors.red),),
              color: Colors.blue,
              textColor: Colors.red,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Button 5", style: TextStyle(color: Colors.white),),
              color: Colors.teal,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Button 6", style: TextStyle(color: Colors.white),),
              color: Colors.red,
              textColor: Colors.white,

            ),
            RaisedButton(
              onPressed: null,
              child: Text("Button 7", style: TextStyle(color: Colors.white),),
              color: Colors.red,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

