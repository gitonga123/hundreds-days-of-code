import 'package:flutter/material.dart';
import 'package:ordercoffee/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: new AppBar(
        title: Text("Brew Crew"),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(
                Icons.person
              ),
              label: Text("Logout")
          )
        ],
      ),
    );
  }
}
