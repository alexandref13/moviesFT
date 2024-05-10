import 'package:flutter/foundation.dart';
import 'package:movies_flutter/modules/home/models/movie_model.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  ValueNotifier<List<MovieModel>> trendingMovies = ValueNotifier([]);
  ValueNotifier<List<MovieModel>> allMovies = ValueNotifier([]);

  Future<void> getTrendingMovies() async {
    trendingMovies.value = await homeRepository.getTrendingMovies();

    notifyListeners();
  }

  Future<void> getAllMovies() async {
    allMovies.value = await homeRepository.getAllMovies();

    notifyListeners();
  }
}
