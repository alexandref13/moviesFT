import 'package:movies_flutter/modules/home/models/movie_model.dart';

abstract class HomeRepository {
  Future<List<MovieModel>> getTrendingMovies();
  Future<List<MovieModel>> getAllMovies();
}
