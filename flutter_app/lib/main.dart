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
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SIForm());
  }
}

class SIForm extends StatefulWidget {
  @override
  _SIFormState createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['KES', 'UGX', 'TZS', 'RWF', 'FBu'];
  final _minimumPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest Calculator'),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: getImageAsset()),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Principal",
                  hintText: "Enter Principal amount e.g 12000",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Rate of Interest",
                  hintText: "In percent p/a",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Term",
                        hintText: "Time in years",
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
                  value: 'KES',
                  onChanged: (String newValueSelected) {
                    debugPrint(newValueSelected);
                  },
                ))
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text("Calculate"),
                    onPressed: () {
                      print("Calculate");
                    },
                  ),
                ),
                SizedBox(width: 8.0,),
                Expanded(
                  child: RaisedButton(
                    child: Text("Reset"),
                    onPressed: () {
                      print("Reset");
                    },
                  ),
                )
              ],
            ),
            // SizedBox(height: 10.0,),
          ],
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
}
