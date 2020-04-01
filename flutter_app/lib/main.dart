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
  var _currencies = ['KES', 'UGX', 'TZS', 'RWF', 'FBu'];
  final _minimumPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
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
              style: textStyle,
              decoration: InputDecoration(
                  labelText: "Principal",
                  labelStyle: textStyle,
                  hintText: "Enter Principal amount e.g 12000",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: textStyle,
              decoration: InputDecoration(
                  labelText: "Rate of Interest",
                  hintText: "In percent p/a",
                  labelStyle: textStyle,
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
                    style: textStyle,
                    decoration: InputDecoration(
                        labelText: "Term",
                        hintText: "Time in years",
                        labelStyle: textStyle,
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
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Theme.of(context).primaryColorDark,
                    child: Text("Calculate", textScaleFactor: 1.5,),
                    onPressed: () {
                      print("Calculate");
                    },
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text("Reset", textScaleFactor: 1.1,),
                    onPressed: () {
                      print("Reset");
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 8.0,),
            Text("Todo list", style: textStyle,)
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
