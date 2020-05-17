import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ordercoffee/movie_app/movie_details_2.dart';

import 'http_helper.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List movies;
  List topRatedMovies;
  int topRatedMoviesCount;
  int moviesCount;
  HttpHelper helper;
  final String iconBase = 'https://image.tmdb.org/t/p/w92/';
  final String defaultImage =
      'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
  Icon visibleIcon = Icon(Icons.search);

  @override
  void initState() {
    helper = HttpHelper();
    print(moviesCount);
    print(topRatedMoviesCount);
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NetworkImage image;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies App"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: visibleIcon,
              onPressed: () {
                debugPrint("Search a movie");
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Recommended",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("View All"),
                )
              ],
            ),
          ),
          Container(
            height: 280,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
                itemBuilder: (BuildContext context, int position) {
                  if (movies[position].posterPath != null) {
                    image =
                        NetworkImage(iconBase + movies[position].posterPath);
                  } else {
                    image = NetworkImage(defaultImage);
                  }
                  return Container(
                    padding: const EdgeInsets.all(5.0),
                    width: 160,
                    child: GestureDetector(
                      onTap: () {
                        MaterialPageRoute route = MaterialPageRoute(
                            builder: (_) => MovieDetailsUpgrade(movies[position]));
                        Navigator.push(context, route);
                      },
                      child: Column(
                        children: <Widget>[
                          Card(
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: image, fit: BoxFit.cover),
                              ),
                            ),
                            elevation: 10.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            movies[position].title,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Top rated movies",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("View All"),
                )
              ],
            ),
          ),
          Container(
            height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
                itemCount: (this.topRatedMoviesCount == null)
                    ? 0
                    : this.topRatedMoviesCount,
                itemBuilder: (BuildContext context, int position) {
                  if (topRatedMovies[position].posterPath != null) {
                    image = NetworkImage(
                        iconBase + topRatedMovies[position].posterPath);
                  } else {
                    image = NetworkImage(defaultImage);
                  }
                  return GestureDetector(
                    onTap: () {
                      MaterialPageRoute route = MaterialPageRoute(
                          builder: (_) => MovieDetailsUpgrade(topRatedMovies[position]));
                      Navigator.push(context, route);
                    },
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: image, fit: BoxFit.cover)),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  child: RichText(
                                    text: TextSpan(
                                        text: topRatedMovies[position].title,
                                        style: DefaultTextStyle.of(context).style,
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.star,
                                              size: 14,
                                              color: Colors.red,
                                            ),
                                          ),
                                          TextSpan(
                                              text: topRatedMovies[position]
                                                  .voteAverage
                                                  .toString()),
                                        ]),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: Text(
                                      topRatedMovies[position].overview,
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }

  Future initialize() async {
    movies = List();
    topRatedMovies = List();
    movies = await helper.getUpcoming();
    topRatedMovies = await helper.getTopRated();
    setState(() {
      moviesCount = movies.length;
      this.movies = movies;

      topRatedMoviesCount = topRatedMovies.length;
      this.topRatedMovies = topRatedMovies;
    });
  }
}
