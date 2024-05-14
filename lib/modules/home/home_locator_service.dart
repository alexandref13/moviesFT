import 'package:get_it/get_it.dart';
import 'package:movies_flutter/modules/home/presentations/all_movies_viewmodel.dart';
import 'package:movies_flutter/modules/home/presentations/trending_movies_viewmodel.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository.dart';
import 'package:movies_flutter/modules/home/repositories/home_repository_imp.dart';
import 'package:movies_flutter/services/custom_http_service.dart';

final homeLocator = GetIt.I;

void homeSetupLocator() {
  homeLocator.registerFactory<HomeRepository>(
    () => HomeRepositoryImp(
      customHttpService: homeLocator<CustomHttpService>(),
    ),
  );
  homeLocator.registerFactory<AllMoviesViewModel>(
    () => AllMoviesViewModel(
      homeRepository: homeLocator<HomeRepository>(),
    ),
  );
  homeLocator.registerFactory<TrendingMoviesViewModel>(
    () => TrendingMoviesViewModel(
      homeRepository: homeLocator<HomeRepository>(),
    ),
  );
}
