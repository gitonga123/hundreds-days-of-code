import 'package:flutter/material.dart';
import 'package:noteapplication/screens/note_detail.dart';
import 'package:noteapplication/models/note.dart';
import 'package:noteapplication/utils/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (noteList == null) {
      noteList = List<Note>();
      updateListView();
    }

    String title = "New Note";
    return Scaffold(
      appBar: new AppBar(
        title: Text('Notes'),
      ),
      body: getNoteListView(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button");
          navigateToDetail(Note('', '', 2), title);
        },
        tooltip: "Add Note",
        // backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    int count = 1;
    String title = "Edit Note Details";

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: getPriorityColor(this.noteList[position].priority),
              child: getPriorityIcon(this.noteList[position].priority),
            ),
            title: new Text(
              this.noteList[position].title,
              style: titleStyle,
            ),
            subtitle: Text(this.noteList[position].date),
            trailing: GestureDetector(
              child: Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onTap: () {
                _delete(context, noteList[position]);
              },
            ),
            onTap: () {
              debugPrint("Dummy Item One");
              navigateToDetail(this.noteList[position], title);
            },
          ),
        );
      },
    );
  }

  Color getPriorityColor(int priority) {
    switch(priority) {
      case 1:
        return Colors.red;
        break;
      case 2:
        return Colors.yellow;
        break;

      default:
        return Colors.yellow;
        break;
    }
  }

  Icon getPriorityIcon(int priority) {
    switch(priority) {
      case 1:
        return Icon(Icons.play_arrow);
        break;
      case 2:
        return Icon(Icons.keyboard_arrow_right);
        break;

      default:
        return Icon(Icons.keyboard_arrow_right);
        break;
    }
  }

  void _delete(BuildContext context, Note note) async {
    int result = await databaseHelper.deleteNote(note.id);
    if (result != 0) {
      _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void navigateToDetail(Note note, String title) async {
    bool result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) {
              return NoteDetail(note, title);
            }
        )
    );

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }
}
