import 'package:flutter/material.dart';
import 'http_helper.dart';

class MovieHome extends StatefulWidget {
  @override
  _MovieHomeState createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  List movies;
  int moviesCount;
  HttpHelper helper;
  final String  iconBase = 'https://image.tmdb.org/t/p/w92/';
  final String defaultImage = 'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';


  @override
  void initState() {
    helper = HttpHelper();
    initialize();
    print(moviesCount);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NetworkImage image;
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
              itemBuilder: (BuildContext context, int position) {
                if (movies[position].posterPath != null ) {
                  image = NetworkImage(
                    iconBase + movies[position].posterPath
                  );
                } else {
                  image = NetworkImage(defaultImage);
                }
                return Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: image,
                    ),
                    title: Text(movies[position].title),
                    subtitle: Text("Released: " +
                        movies[position].releaseDate +
                        ' - Vote: ' +
                        movies[position].voteAverage.toString()),
                  ),
                );
              }),
        ),
      ),
    );
  }

  Future initialize() async {
    movies = List();
    movies = await helper.getUpcoming();
    setState(() {
      moviesCount = movies.length;
      print(moviesCount);
      this.movies = movies;
    });
  }
}
