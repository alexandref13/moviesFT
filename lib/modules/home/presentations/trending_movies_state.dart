import 'package:movies_flutter/core/models/movie_model.dart';

abstract class TrendingMovieState {}

// TRENDING MOVIES
class InitialTrendingMoviesState extends TrendingMovieState {}

class SuccessTrendingMoviesState extends TrendingMovieState {
  final List<MovieModel> trendingMovies;

  SuccessTrendingMoviesState(this.trendingMovies);
}

class LoadingTrendingMoviesState extends TrendingMovieState {}

class ErrorTrendingMoviesState extends TrendingMovieState {
  final String error;

  ErrorTrendingMoviesState(this.error);
}
