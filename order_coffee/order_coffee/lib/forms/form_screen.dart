import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:string_validator/string_validator.dart';

class FormScreen extends StatelessWidget {
  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Full Name"
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "Full Name is required";
        }
        return "";
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }
  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Email"
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "Email is required";
        }
        bool isValid = EmailValidator.validate(value);
        if (!isValid) {
          return "Please enter a valid email";
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }
  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Password"
      ),
      obscureText: true,
      validator: (String value) {
        if (value.isEmpty) {
          return "Password is required";
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }
  Widget _buildUrl() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Git URL"
      ),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if (value.isEmpty) {
          return "Git url is required";
        }
        bool isValid = isURL(value);
        if (!isValid) {
          return "Please enter a valid url";
        }
        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }
  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Phone number"
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "phone number is required";
        }

        if (value.length < 5) {
          return "Phone number length should be greater than 5";
        }

        return null;
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }
  Widget _buildCalories() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Weight (kg)"
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return "Weight is required";
        }
        bool isValid = isNumeric(value);
        if (!isValid) {
          return "Please enter a valid weight";
        }
        int newValue = int.tryParse(value);
        if (newValue < 20) {
          return "Please Enter weight above 20";
        }
        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms in Flutter"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildName(),
                  _buildEmail(),
                  _buildPassword(),
                  _buildPhoneNumber(),
                  _buildUrl(),
                  _buildCalories(),
                  SizedBox(
                    height: 100,
                  ),
                  RaisedButton(
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        print(_name);
                        print(_phoneNumber);
                        print(_url);
                        print(_calories);
                        print(_password);

                        _formKey.currentState.save();
                        debugPrint("Submit button clicked");
                      },
                    child: Text(
                        "Submit",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}