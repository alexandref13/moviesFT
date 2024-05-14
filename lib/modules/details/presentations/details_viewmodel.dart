import 'package:flutter/widgets.dart';
import 'package:movies_flutter/modules/details/presentations/details_state.dart';
import 'package:movies_flutter/modules/details/repositories/details_repository.dart';

class DetailsMovieViewModel extends ValueNotifier<DetailsMovieState> {
  final DetailsMovieRepository detailsMovieRepository;

  DetailsMovieViewModel({required this.detailsMovieRepository})
      : super(
          InitialDetailsMovieState(),
        );

  Future<void> getMovie({
    String? id,
  }) async {
    value = LoadingDetailsMovieState();

    if (id == "" || id == null) {
      value = ErrorDetailsMovieState("Invalid ID");

      return;
    }

    try {
      final response = await detailsMovieRepository.getMovie(id: id);

      value = SuccessDetailsMovieState(response);
    } catch (e) {
      value = ErrorDetailsMovieState(e.toString());
    }
  }
}
