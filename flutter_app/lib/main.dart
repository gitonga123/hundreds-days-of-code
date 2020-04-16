import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/app_screens/first_screen.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Simple Interest Calculator App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.indigo,
            accentColor: Colors.indigoAccent,
            brightness: Brightness.dark),
        home: SIForm());
  }
}

class SIForm extends StatefulWidget {
  @override
  _SIFormState createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {
  var _formKey = GlobalKey<FormState>();
  var _currencies = ['KES', 'UGX', 'TZS', 'RWF', 'FBu'];
  final _minimumPadding = 5.0;
  var _currentItemSelected = '';

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();
  String displayResult = '';

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest Calculator'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(child: getImageAsset()),
              ),
              TextFormField(
                controller: principalController,
                keyboardType: TextInputType.number,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please enter principal amount";
                  }
                  return "";
                },
                style: textStyle,
                decoration: InputDecoration(
                    labelText: "Principal",
                    labelStyle: textStyle,
                    hintText: "Enter Principal amount e.g 12000",
                    errorStyle: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 15.0
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: roiController,
                keyboardType: TextInputType.number,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please Enter the ROI";
                  }
                  return "";
                },
                style: textStyle,
                decoration: InputDecoration(
                    labelText: "Rate of Interest",
                    hintText: "In percent p/a",
                    labelStyle: textStyle,
                    errorStyle: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 15.0
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: termController,
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please Enter the term of interest rate";
                        }
                        return "";
                      },
                      style: textStyle,
                      decoration: InputDecoration(
                          labelText: "Term",
                          hintText: "Time in years",
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 15.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Container(
                    width: _minimumPadding * 5,
                  ),
                  Expanded(
                      child: DropdownButton<String>(
                    items: _currencies.map((String currencyList) {
                      return DropdownMenuItem<String>(
                        child: Text(currencyList),
                        value: currencyList,
                      );
                    }).toList(),
                    value: _currentItemSelected,
                    onChanged: (String newValueSelected) {
                      _onDropDownItemSelected(newValueSelected);
                    },
                  ))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      textColor: Theme.of(context).primaryColorDark,
                      child: Text(
                        "Calculate",
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState.validate()) {
                            this.displayResult = _calculateTotalReturns();
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        "Reset",
                        textScaleFactor: 1.1,
                      ),
                      onPressed: () {
                        setState(() {
                          _reset();
                        });
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                this.displayResult,
                style: textStyle,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getImageAsset() {
    String value = "assets/image/money.png";
    AssetImage assetImage = AssetImage(value);
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(
      child: image,
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String result =
        "After $term years, your investment will be worth $totalAmountPayable $_currentItemSelected";

    return result;
  }

  void _reset() {
    principalController.text = '';
    roiController.text = '';
    termController.text = '';
    displayResult = '';
    _currentItemSelected = _currencies[0];
  }
}
