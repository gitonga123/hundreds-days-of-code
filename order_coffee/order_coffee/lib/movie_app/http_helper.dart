import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'movie_class.dart';

class HttpHelper {
  final String urlKey = 'api_key=632f9f4f33a8dc6c512e488cd7ed613c';
  final String urlBase = 'https://api.themoviedb.org/3/movie';
  final String urlUpcoming = '/upcoming?';
  final String urlLanguage = '&language=en-US';

  Future<List> getUpcoming() async {
    final String upcoming = urlBase +  urlUpcoming + urlKey + urlLanguage;
    http.Response result = await http.get(upcoming);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map( (i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }
}