import 'package:flutter/material.dart';
import 'package:ordercoffee/shopping/util/dbhelper.dart';

class ShoppingDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    DbHelper helper = DbHelper();
    helper.testDb();
    return Container();
  }
}
