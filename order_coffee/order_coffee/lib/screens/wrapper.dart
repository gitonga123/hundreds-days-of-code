import 'package:flutter/material.dart';
import 'package:ordercoffee/models/user.dart';
import 'package:ordercoffee/screens/authenticate/authenticate.dart';
import 'package:ordercoffee/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    }
    return Home();
  }
}
