import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';

class MyIdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('MY ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "NAME",
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 2.0, fontSize: 15.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Daniel Mutwiri",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "CONTACTS:",
                  style: TextStyle(
                      fontSize: 15.0, letterSpacing: 2.0, color: Colors.grey),
                ),
                Icon(
                  FontAwesomeIcons.github,
                  color: Colors.amberAccent[200],
                ),
                IconButton(
                  icon: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                    color: Colors.amberAccent[200],
                  ),
                  iconSize: 16.0,
                  onPressed: () {},
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.amberAccent[200],
                ),
                Icon(
                  FontAwesomeIcons.googleWallet,
                  color: Colors.amberAccent[200],
                ),
                Icon(
                  Icons.email,
                  color: Colors.amberAccent[200],
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  "TECHNOLOGY STACK:",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    letterSpacing: 2.0
                  ),
                ),
                FaIcon(FontAwesomeIcons.python),
              ],
            )
          ],
        ),
      ),
    );
  }
}
