import 'package:movies_flutter/core/models/movie_model.dart';

abstract class DetailsMovieRepository {
  Future<MovieModel> getMovie({required String id});
  Future<void> addToWatchlist();
}
