import 'package:movies_flutter/core/models/movie_model.dart';

abstract class AllMoviesState {}

// All Movies
class InitialAllMoviesMoviesState extends AllMoviesState {}

class SuccessAllMoviesState extends AllMoviesState {
  final List<MovieModel> allMovies;

  SuccessAllMoviesState(this.allMovies);
}

class LoadingAllMoviesState extends AllMoviesState {}

class ErrorAllMoviesState extends AllMoviesState {
  final String error;

  ErrorAllMoviesState(this.error);
}
