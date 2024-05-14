import 'package:movies_flutter/core/models/movie_model.dart';

abstract class DetailsMovieState {}

// TRENDING MOVIES
class InitialDetailsMovieState extends DetailsMovieState {}

class SuccessDetailsMovieState extends DetailsMovieState {
  final MovieModel movie;

  SuccessDetailsMovieState(this.movie);
}

class LoadingDetailsMovieState extends DetailsMovieState {}

class ErrorDetailsMovieState extends DetailsMovieState {
  final String error;

  ErrorDetailsMovieState(this.error);
}
