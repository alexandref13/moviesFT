import 'package:get_it/get_it.dart';
import 'package:movies_flutter/modules/details/presentations/details_viewmodel.dart';

final detailsLocator = GetIt.I;

void detailsSetupLocator() {
  // movieLocator.registerFactory<MovieRepository>(
  // () => HomeRepositoryImp(
  //   customHttpService: homeLocator<CustomHttpService>(),
  // ),
  // );
  detailsLocator.registerFactory<MovieViewModel>(
    () => MovieViewModel(),
  );
}
