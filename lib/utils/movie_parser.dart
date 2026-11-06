import 'dart:convert';

import 'package:movie_app/models/movie.dart';

class MovieParser {
  static List<Movie> parseMovies(String jsonString) {
    final parsed = json.decode(jsonString).cast<Map<String, dynamic>>();
    return parsed.map<Movie>((json) => Movie.fromJson(json)).toList();
  }
}