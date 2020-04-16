import 'package:flutter/material.dart';
import 'package:ordercoffee/screens/authenticate/register.dart';
import 'package:ordercoffee/screens/authenticate/signin.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return Container(
        child: SignIn(
            toggleValue: showSignIn
        ),
      );
    } else {
      return Container(
        child: Register(
            toggleValue: showSignIn
        ),
      );
    }
  }
}
