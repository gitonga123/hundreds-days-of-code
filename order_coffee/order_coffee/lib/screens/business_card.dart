import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
          ),
          Text(
            "John Ndoe",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                fontFamily: 'Pacifico'),
          ),
          Text(
            "SOFTWARE ENGINEER",
            style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontFamily: 'SourceSansPro'),
          ),
          SizedBox(
            height: 20.0,
            width: 200.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 20.0,
                  color: Colors.teal.shade600,
                ),
                title: Text(
                  "+254 700 500 201",
                  style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 20.0,
                      fontFamily: "SourceSansPro"),
                ),
              )),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 20.0,
                  color: Colors.teal.shade600,
                ),
                title: Text(
                  "johnndoe@example.com",
                  style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 20.0,
                      fontFamily: "SourceSansPro"),
                ),
              ))
        ],
      )),
    );
  }
}
