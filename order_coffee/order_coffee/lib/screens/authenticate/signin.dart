import 'package:flutter/material.dart';
import 'package:ordercoffee/services/auth.dart';

class SignIn extends StatefulWidget {
  bool toggleValue;
  SignIn({ this.toggleValue });
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign In"),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleValue;
              },
              icon: Icon(Icons.person),
              label: Text("Register")
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (email) {
                  setState(() {
                    email = email;
                  });
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (password) {
                  setState(() {
                    password = password;
                  });
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                  onPressed: () async {
                    print(email);
                    print(password);
                  },
                color: Colors.pink[400],
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
