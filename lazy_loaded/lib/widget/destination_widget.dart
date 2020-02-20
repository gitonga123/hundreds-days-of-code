import 'package:flutter/material.dart';
import 'package:flutter_app/models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Destinations',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              Text(
                'See All',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              )
            ],
          ),
        ),
        Container(
          height: 300.0,
          color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destionation = destinations[index];
              return Container(
                color: Colors.red,
                margin: EdgeInsets.all(10.0),
                width: 210.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${destionation.activities.length} activities',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0,
                                  letterSpacing: 1.2),
                            ),
                            Text(destionation.description,
                                style: TextStyle(color: Colors.grey))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0),
                          ]),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            height: 180.0,
                            width: 180.0,
                            image: AssetImage(destionation.imageUrl),
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
