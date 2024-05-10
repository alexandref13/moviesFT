import 'package:flutter/foundation.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  Future<void> getTrendingMovies() async {
    await homeRepository.getTrendingMovies();
  }
}
