import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'movie_class.dart';

class HttpHelper {
  final String urlKey = 'api_key=632f9f4f33a8dc6c512e488cd7ed613c';
  final String urlBase = 'https://api.themoviedb.org/3/movie';
  final String urlUpcoming = '/upcoming?';
  final String topRatedUrl = 'https://api.themoviedb.org/3/movie/top_rated?api_key=632f9f4f33a8dc6c512e488cd7ed613c&language=en-US&page=1';
  final String topRated = '/top_rated?';
  final String page = '&page=1';
  final String language = '&language=en-US';
  final String urlLanguage = '&language=en-US';
  final String urlSearchBase =
      'https://api.themoviedb.org/3/search/movie?api_key=632f9f4f33a8dc6c512e488cd7ed613c&query=';

  Future<List> getUpcoming() async {
    final String upcoming = urlBase + urlUpcoming + urlKey + urlLanguage;
    http.Response result = await http.get(upcoming);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }

  Future<List> getTopRated() async {
    final String latest = urlBase + topRated + urlKey + language + page;
    http.Response result = await http.get(latest);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map(
          (i) => Movie.fromJson(i)
      ).toList();
      return movies;
    } else {
      return null;
    }
  }

  Future<List> findMovies(String title) async {
    final String query = urlBase + title;
    http.Response result = await http.get(query);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }
}
