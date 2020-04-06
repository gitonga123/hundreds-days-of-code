import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noteapplication/models/note.dart';
import 'package:noteapplication/utils/database_helper.dart';

class NoteDetail extends StatefulWidget {
  final String appBarTitle;
  final Note note;

  NoteDetail(this.note, this.appBarTitle);
  @override
  _NoteDetailState createState() => _NoteDetailState(this.note, this.appBarTitle);
}

class _NoteDetailState extends State<NoteDetail> {
  String appBarTitle;
  Note note;
  DatabaseHelper helper = DatabaseHelper();

  _NoteDetailState(this.note, this.appBarTitle);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    titleController.text = note.title;
    descriptionController.text = note.description;

    return WillPopScope(
      onWillPop: () {
          moveToLastScreen();
      },
      child: Scaffold(
        appBar: new AppBar(
          title: Text(appBarTitle),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              moveToLastScreen();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: getEditNoteDetails(),
        ),
      ),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void updatePriorityAsInt(String value) {
    switch (value) {
      case 'High':
        note.priority = 1;
        break;
      case 'Low':
        note.priority = 2;
        break;
      default:
        note.priority = 2;
        break;
    }
  }

  String getPriorityAsString(int value) {
    String priority;
    switch (value) {
      case 1:
        priority = 'High';
        break;
      case 2:
        priority = "Low";
        break;
    }
    return priority;
  }

  void updateTitle() {
    note.title = titleController.text;
  }

  void updateDescription() {
    note.description = descriptionController.text;
  }

  void _save() async {

    moveToLastScreen();
    note.date = DateFormat.yMMMd().format(DateTime.now());
    int result;
    if (note.id != null) {
      result = await helper.updateNote(note);
    } else {
      result  = await helper.insertNote(note);
    }

    if (result != 0) {
      _showAlterDialog("Status", "Note Saved Successfully");
    } else {
      _showAlterDialog("Status", "Problem Saving the Note");
    }
  }

  void _showAlterDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
      context: context,
      builder: (_) => alertDialog
    );
  }

  void _delete() async {
    moveToLastScreen();
    if (note.id == null) {
      _showAlterDialog('Status', 'No Note was deleted');
      return;
    }
    int result = await helper.deleteNote(note.id);
    if (result != 0 ) {
      _showAlterDialog('Status', 'Note Deleted Successfuly');
    } else {
      _showAlterDialog('Status', 'Error Occurred while Deleting Note');
    }
  }

  ListView getEditNoteDetails() {
    var _priorities = ["High", "Low"];

    TextStyle textStyle = Theme.of(context).textTheme.title;
    return ListView(
      children: <Widget>[
        ListTile(
          title: DropdownButton(
            items: _priorities.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (valueSelected) {
              setState(() {
                updatePriorityAsInt(valueSelected);
              });
            },
            value: getPriorityAsString(this.note.priority),
          ),
        ),
        SizedBox(height: 15.0,),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  updateTitle();
                },
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  updateDescription();
                },
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _save();
                      });
                    },
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      'Save',
                      textScaleFactor: 1.5,
                    ),
                  )
              ),
              SizedBox(width: 5.0,),
              Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _delete();
                      });
                    },
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      'Delete',
                      textScaleFactor: 1.5,
                    ),
                  )
              )
            ],
          ),
        )
      ],
    );
  }

}

