import 'package:get_it/get_it.dart';
import 'package:movies_flutter/modules/details/presentations/details_viewmodel.dart';
import 'package:movies_flutter/modules/details/repositories/details_repository.dart';
import 'package:movies_flutter/modules/details/repositories/details_repository_imp.dart';
import 'package:movies_flutter/services/custom_http_service.dart';

final detailsLocator = GetIt.I;

void detailsSetupLocator() {
  detailsLocator.registerFactory<DetailsMovieRepository>(
    () => DetailsRepositoryImp(
      customHttpService: detailsLocator<CustomHttpService>(),
    ),
  );
  detailsLocator.registerFactory<DetailsMovieViewModel>(
    () => DetailsMovieViewModel(
      detailsMovieRepository: detailsLocator<DetailsMovieRepository>(),
    ),
  );
}
