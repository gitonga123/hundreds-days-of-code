import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarHome extends StatefulWidget {
  @override
  _CalendarHomeState createState() => _CalendarHomeState();
}

class _CalendarHomeState extends State<CalendarHome> {
  CalendarController _controller;
  Map<DateTime, List<dynamic>> _events;
  TextEditingController  _eventController;
  List<dynamic> _selectedEvents;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _events = {};
    _eventController = TextEditingController();
    _selectedEvents = [];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('My Calendar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              events: _events,
              calendarController: _controller,
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    28.0
                  )
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white
                ),
                formatButtonShowsNext: false
              ),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              calendarStyle: CalendarStyle(
                todayColor: Colors.orange,
                selectedColor: Theme.of(context).primaryColor,
                todayStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: "SourceSansPro"
                )
              ),
              onDaySelected: (date, events) {
                setState(() {
                  _selectedEvents = events;
                });
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                  margin: EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle
                    ),
                    child: Text(
                        date.day.toString(),
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                )
              ),
            ),
            ... _selectedEvents.map((event) => ListTile(
              title: Text(event),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog,
        child: Icon(Icons.add),
      ),
    );
  }

  _showAddDialog() {
    showDialog(
        context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: _eventController,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Save"),
            onPressed: () {
              if (_eventController.text.isEmpty) return;
              setState (() {
                if (_events[_controller.selectedDay] != null) {
                  _events[_controller.selectedDay].add(
                    _eventController.text
                  );
                } else {
                  _events[_controller.selectedDay] = [_eventController.text];
                }

                _eventController.clear();
                Navigator.pop(context);
              });
            },
          )
        ],
      )
    );
  }

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });

    return newMap;
  }
  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });

    return newMap;
  }
}
