import 'package:flutter/material.dart';
import 'package:noteapplication/screens/note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  Widget build(BuildContext context) {
    String title = "New Note";
    return Scaffold(
      appBar: new AppBar(
        title: Text('Notes'),
      ),
      body: getNoteListView(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button");
          navigateToDetail(title);
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
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: new Text(
              "Dummy Title: ",
              style: titleStyle,
            ),
            subtitle: Text("Dummy Date"),
            trailing: Icon(
              Icons.delete,
              color: Colors.grey,
            ),
            onTap: () {
              debugPrint("Dummy Item One");
              navigateToDetail(title);
            },
          ),
        );
      },
    );
  }

  void navigateToDetail(String title) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) {
              return NoteDetail(title);
            }
        )
    );
  }
}
