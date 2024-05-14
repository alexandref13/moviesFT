import 'package:movies_flutter/core/models/movie_model.dart';

abstract class HomeRepository {
  Future<List<MovieModel>> getTrendingMovies();
  Future<List<MovieModel>> getAllMovies();
}
