import 'package:flutter/material.dart';

class ConverterHome extends StatefulWidget{
  @override
  _ConverterHomeState createState() => _ConverterHomeState();
}

class _ConverterHomeState extends State<ConverterHome> {
  double _numberFrom;
  final List<String> _measures = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds(lbs)',
    'ounces',
  ];
  String _startMeasure;
  String _convertedMeasure;
  String _resultMessages;

  final Map<String, int> _measuresMap = {
    'meters': 0,
    'kilometers': 1,
    'grams': 2,
    'kilogram': 3,
    'feet': 4,
    'miles': 5,
    'pounds (lbs)' : 6,
    'ounces' : 7
  };

  final dynamic _formulas = {
    '0':[1,0.001,0,0,3.28084,0.000621371,0,0],
    '1':[1000,1,0,0,3280.84,0.621371,0,0],
    '2':[0,0,1,0.0001,0,0,0.00220462,0.035274],
    '3':[0,0,1000,1,0,0,2.20462,35.274],
    '4':[0.3048,0.0003048,0,0,1,0.000189394,0,0],
    '5':[1609.34, 1.60934,0,0,5280,1,0,0],
    '6':[0,0,453.592,0.453592,0,0,1,16],
    '7':[0,0,28.3495,0.0283495,3.28084,0,0.0625, 1],
  };

  final TextStyle inputStyle = TextStyle(fontSize: 24, color: Colors.blue[900]);
  final TextStyle labelStyle = TextStyle(fontSize: 24, color: Colors.grey[700]);

  final _formKey = GlobalKey<FormState>();

  void convert(double value, String from, String to) {
    int nFrom = _measuresMap[from];
    int nTo = _measuresMap[to];
    var multiplier = _formulas[nFrom.toString()][nTo];
    var result = value * multiplier;
    if (result == 0) {
      setState(() {
        _resultMessages = 'This conversion cannot e performed';
      });
    } else {
      _resultMessages = "${_numberFrom.toString()} $_startMeasure are ${result.toString()} $_convertedMeasure";
  }

   setState(() {
     _resultMessages = _resultMessages;
   });
  }

  @override
  void initState() {
    _numberFrom = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Measures Converter"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text("Value", style: labelStyle,),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Please insert the measure to be converted: ',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (String text) {
                      if (text.isEmpty) {
                        return "Please prove value to convert";
                      }
                      return null;
                    },
                    onChanged: (String text) {
                      if (text.isNotEmpty) {
                        double rv  = double.tryParse(text);
                        setState(() {
                          _numberFrom = rv;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 10.0,),
                  Text("From", style: labelStyle,),
                  SizedBox(height: 10.0,),
                  DropdownButton(
                    isExpanded: true,
                      items: _measures.map((String value) {
                        return DropdownMenuItem<String>(value: value, child: Text(value, style: inputStyle,),);
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _startMeasure = value;
                        });
                      },
                    value: _startMeasure,
                  ),
                  SizedBox(height: 10.0,),
                  Text("To", style: labelStyle,),
                  SizedBox(height: 10.0,),
                  DropdownButton(
                    isExpanded: true,
                      items: _measures.map((String value) {
                        return DropdownMenuItem<String>(value: value, child: Text(value, style: inputStyle,),);
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _convertedMeasure = value;
                        });
                      },
                    value: _convertedMeasure,
                  ),
                  SizedBox(height: 10.0,),
                  RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          convert(_numberFrom, _startMeasure, _convertedMeasure);
                        } else {
                          return;
                        }
                      },
                      child: Text("Convert", style: labelStyle,),
                  ),
                  SizedBox(height: 10.0,),
                  Text((_resultMessages == null) ? '' : _resultMessages, style: labelStyle,),
                ],
              ),
            ),
          )
      ),
    );
  }
}