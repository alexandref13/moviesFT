import 'package:movies_flutter/core/models/movie_model.dart';
import 'package:movies_flutter/modules/details/repositories/details_repository.dart';
import 'package:movies_flutter/services/custom_http_service.dart';

class DetailsRepositoryImp implements DetailsMovieRepository {
  final CustomHttpService customHttpService;

  DetailsRepositoryImp({required this.customHttpService});
  @override
  Future<MovieModel> getMovie({required String id}) async {
    final response = await customHttpService.dio.get(
      "/movie/$id",
    );

    final data = response.data;
    final movie = MovieModel.fromJson(data);

    return movie;
  }

  @override
  Future<void> addToWatchlist() {
    // TODO: implement addToWatchlist
    throw UnimplementedError();
  }
}
