import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  String appBarTitle;
  NoteDetail(this.appBarTitle);
  @override
  _NoteDetailState createState() => _NoteDetailState(this.appBarTitle);
}

class _NoteDetailState extends State<NoteDetail> {
  String appBarTitle;
  _NoteDetailState(this.appBarTitle);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
    Navigator.pop(context);
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
                debugPrint(valueSelected);
              });
            },
            value: _priorities[0],
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
                  debugPrint("Something Changed in the title text field");
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
                  debugPrint("Something Changed in the description text field");
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
                        debugPrint("Save bottom");
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
                        debugPrint("Delete bottom");
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

