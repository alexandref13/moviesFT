import 'package:flutter/foundation.dart';
import 'package:movies_flutter/modules/home/presentations/all_movies_state.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository.dart';

class AllMoviesViewModel extends ValueNotifier<AllMoviesState> {
  final HomeRepository homeRepository;

  AllMoviesViewModel({required this.homeRepository})
      : super(
          InitialAllMoviesMoviesState(),
        );

  Future<void> getAllMovies() async {
    value = LoadingAllMoviesState();

    try {
      final response = await homeRepository.getAllMovies();

      value = SuccessAllMoviesState(response);
    } catch (e) {
      value = ErrorAllMoviesState(e.toString());
    }
  }
}
