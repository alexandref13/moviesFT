import 'package:get_it/get_it.dart';
import 'package:movies_flutter/modules/movie/presentations/movie_viewmodel.dart';

final movieLocator = GetIt.I;

void movieSetupLocator() {
  // movieLocator.registerFactory<MovieRepository>(
  // () => HomeRepositoryImp(
  //   customHttpService: homeLocator<CustomHttpService>(),
  // ),
  // );
  movieLocator.registerFactory<MovieViewModel>(
    () => MovieViewModel(),
  );
}
