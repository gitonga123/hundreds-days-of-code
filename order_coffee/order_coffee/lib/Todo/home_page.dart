import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ordercoffee/Todo/model/todo_model.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Todo Application',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white70,
            ),
            onPressed: null),
      ),
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                "15:36",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "current time",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ), // to show the clock
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(59),
                    topLeft: Radius.circular(60),
                  ),
                  color: Colors.white),
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(
                        left: 32,
                        right: 32,
                        top: 8,
                        bottom: 8,
                      ),
                      title: Text(
                        "Todo List 1",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Day 1",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.check_circle,
                        color: Colors.greenAccent,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
