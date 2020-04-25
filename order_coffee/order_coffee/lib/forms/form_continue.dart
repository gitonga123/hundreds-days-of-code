import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String _fullname;
  int _year_of_birth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Custom Form"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Full Names",
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Full Names required";
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        _fullname = value;
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Year of Birth"),
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Year of Birth is required";
                        }
                        int dob_birth = int.tryParse(value);
                        if (dob_birth < 15) {
                          return "You're to young to understand an app";
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        _year_of_birth = int.tryParse(value);
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print(_fullname);
                          print(_year_of_birth);
                        }
                      },
                      child: Text("Submit"),
                    )
                  ],
                ),
              )),
        ));
  }
}
