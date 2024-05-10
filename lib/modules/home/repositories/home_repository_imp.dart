import 'package:movies_flutter/modules/home/repositories/home_repository.dart';
import 'package:movies_flutter/services/custom_http_service.dart';

class HomeRepositoryImp implements HomeRepository {
  final CustomHttpService customHttpService;

  HomeRepositoryImp({required this.customHttpService});

  @override
  Future<List> getTrendingMovies() async {
    final response = await customHttpService.dio.get("/trending/movie/week");

    print(response.data);

    return [];
  }
}
