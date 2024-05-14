import 'package:movies_flutter/core/models/movie_model.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository.dart';
import 'package:movies_flutter/services/custom_http_service.dart';

class HomeRepositoryImp implements HomeRepository {
  final CustomHttpService customHttpService;

  HomeRepositoryImp({required this.customHttpService});

  @override
  Future<List<MovieModel>> getTrendingMovies() async {
    final response = await customHttpService.dio.get(
      "/trending/movie/week",
    );

    final data = response.data['results'] as List<dynamic>;
    List<MovieModel> movies = [];

    movies = data.map((movie) => MovieModel.fromJson(movie)).toList();

    return movies;
  }

  @override
  Future<List<MovieModel>> getAllMovies() async {
    final response = await customHttpService.dio.get(
      "/discover/movie?include_adult=false&include_video=false&page=1&sort_by=popularity.desc",
    );

    final data = response.data['results'] as List<dynamic>;
    List<MovieModel> movies = [];

    movies = data.map((movie) => MovieModel.fromJson(movie)).toList();

    return movies;
  }
}
