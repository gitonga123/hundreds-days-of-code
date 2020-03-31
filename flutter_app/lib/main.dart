import 'package:flutter/material.dart';
import 'package:flutterapp/app_screens/first_screen.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Exploring Flutter UI Widgets",
        debugShowCheckedModeBanner: false,
        home: FavouriteCity());
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
