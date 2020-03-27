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
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    " from Nairobi to Mombasa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: "LiuJianMaoCao",
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
                        fontSize: 35.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Colors.white
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    " from Nairobi to Kisumu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontFamily: "LiuJianMaoCao",
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                // assets
              ],
            ),
            FlightImageAsset()
          ],
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/image/540_1.jpg");
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

