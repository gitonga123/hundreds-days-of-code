import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);

    return "Your lucky number is: ${luckyNumber}";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 35.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Jambo Jet: ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text(
                    " from Nairobi to Mombasa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Fly 540: ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 45.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Text(
                    " from Nairobi to Kisumu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                // assets
              ],
            ),
            FlightImageAsset(),
            FlightBookButton()
          ],
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/image/ticket-img.png");
    Image image = Image(image: assetImage, width: 250, height: 250.0);
    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: new RaisedButton(
        onPressed: () => bookFlight(context),
        color: Colors.deepOrange,
        child: Text(
          "Book Your Flight",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700),
        ),
        elevation: 6.0,
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "Flight Book Successfully",
      ),
      content: Text("Have a pleasant Flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape Tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
        subtitle: Text("My Computers"),
        trailing: Icon(Icons.computer),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Yet another element in List"),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listView;
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");

  return items;
}

Widget getLongListView() {
  var items = getListElements();
  var listView = ListView.builder(
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Text((index + 1).toString()),
        title: Text(items[index]),
        trailing: Icon(Icons.arrow_downward),
        onTap: () {
          showSnackBar(context, "Item Number ${items[index]} was tapped");
        },
      );
    },
  );

  return listView;
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text(item),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () => print("Performing dummy UNDO operation"),
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

class FavouriteCity extends StatefulWidget {
  @override
  _FavouriteCityState createState() => _FavouriteCityState();
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = "";
  var _currencies = [
    'Kenyan Shillings',
    'Ugandan Shillings',
    'Tanzanian Shillings',
    'Rwandese Franc',
    'Burundian Franc'
  ];
  var _currencySelected = 'Kenyan Shillings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String currencyItem) {
                return DropdownMenuItem<String>(
                  child: Text(currencyItem),
                  value: currencyItem,
                );
              }).toList(),
              onChanged: (String newCurrency) {
                debugPrint(newCurrency);
                _currencySelectedFunc(newCurrency);
              },
              value: _currencySelected,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Your favourite city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _currencySelectedFunc(String newCurrency) {
    setState(() {
      this._currencySelected = newCurrency;
    });
  }
}

