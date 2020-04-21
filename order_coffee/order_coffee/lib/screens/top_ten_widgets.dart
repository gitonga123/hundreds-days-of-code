import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTenWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichTextWidget();
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
    ));
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
              child: Text(
                "Button 1",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                "Button 2",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                "Button 3",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                "Button 4",
                style: TextStyle(color: Colors.red),
              ),
              color: Colors.blue,
              textColor: Colors.red,
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                "Button 5",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.teal,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                "Button 6",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                "Button 7",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Text("Rich Text", style: TextStyle(fontSize: 50),),
      child: RichText(
        text: TextSpan(
            text: "RICH",
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue),
            children: [
              TextSpan(
                  text: "TEXT",
                  style: TextStyle(
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      color: Colors.red))
            ]),
      ),
    );
  }
}

// ClipRRect
class ClipRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('ClipRRect Widget'),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Container(
                width: 300.0,
                height: 300.0,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: new AppBar(
        title: Text('Media Query Widget'),
      ),
      body: Container(
        child: (orientation == Orientation.portrait)
            ? Column(
                children: getLayoutElement(),
              )
            : Row(
                children: getLayoutElement(),
              ),
      ),
    );
  }

  List getLayoutElement() {
    List<Widget> layoutElement = [
      Flexible(
          flex: 5,
          child: Container(
            color: Colors.blue,
          )),
      Flexible(
          flex: 5,
          child: Container(
            color: Colors.green,
          ))
    ];
    return layoutElement;
  }
}
