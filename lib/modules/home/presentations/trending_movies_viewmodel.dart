import 'package:flutter/foundation.dart';
import 'package:movies_flutter/modules/home/presentations/trending_movies_state.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository.dart';

class TrendingMoviesViewModel extends ValueNotifier<TrendingMovieState> {
  final HomeRepository homeRepository;

  TrendingMoviesViewModel({required this.homeRepository})
      : super(
          InitialTrendingMoviesState(),
        );

  Future<void> getTrendingMovies() async {
    value = LoadingTrendingMoviesState();

    try {
      final response = await homeRepository.getTrendingMovies();

      value = SuccessTrendingMoviesState(response);
    } catch (e) {
      value = ErrorTrendingMoviesState(e.toString());
    }
  }
}
