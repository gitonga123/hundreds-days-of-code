import 'package:flutter/material.dart';
import 'package:ordercoffee/models/user_model.dart';

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

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Builder(
            builder: (context) => Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "First Name"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "First Name is required";
                      }

                      return null;
                    },
                    onSaved: (String value) {
                      setState(() {
                        _user.firstName = value;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Last Name"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Lasr Name is required";
                      }

                      return null;
                    },
                    onSaved: (String value) {
                      setState(() {
                        _user.lastName = value;
                      });
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: Text('Subscribe'),
                  ),
                  SwitchListTile(
                      title: const Text('Monthly Newsletter'),
                      value: _user.newsletter,
                      onChanged: (bool val) =>
                          setState(() => _user.newsletter = val)),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: Text('Interests'),
                  ),
                  CheckboxListTile(
                      title: const Text('Cooking'),
                      value: _user.passions['cooking'],
                      onChanged: (bool val) {
                        setState(() {
                          _user.passions[User.PassionCooking] = val;
                        });
                      }),
                  CheckboxListTile(
                      title: const Text('Hiking'),
                      value: _user.passions['hiking'],
                      onChanged: (bool val) {
                        setState(() {
                          _user.passions[User.PassionHiking] = val;
                        });
                      }),
                  CheckboxListTile(
                      title: const Text('Travel'),
                      value: _user.passions['travel'],
                      onChanged: (bool val) {
                        setState(() {
                          _user.passions[User.PassionCooking] = val;
                        });
                      }),
                  SizedBox(
                    height: 15.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print(_user.firstName);
                        print(_user.lastName);
                        _formKey.currentState.save();
                        _user.save();
                        _showDialog(context);
                      }
                    },
                    child: Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Processing form"),
    ));
  }
}
