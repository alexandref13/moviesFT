import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/modules/details/presentations/details_state.dart';
import 'package:movies_flutter/modules/details/presentations/details_viewmodel.dart';
import 'package:movies_flutter/theme/typograph.dart';

class DetailsView extends StatefulWidget {
  final String? id;

  const DetailsView({
    super.key,
    this.id,
  });

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final detailsMovieViewModel = GetIt.instance<DetailsMovieViewModel>();

  @override
  void initState() {
    detailsMovieViewModel.getMovie(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: detailsMovieViewModel,
      builder: (context, value, child) {
        if (value is SuccessDetailsMovieState) {
          final movie = value.movie;

          return Scaffold(
            appBar: AppBar(
              title: Text(value.movie.title),
              leading: BackButton(
                onPressed: () {
                  context.go("/");
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
                      height: MediaQuery.of(context).size.height * .6,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      movie.title,
                      style: customTextStyle(CustomTextStyleEnum.titleMedium),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      movie.overview,
                      style: customTextStyle(CustomTextStyleEnum.bodyMedium),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          );
        }

        if (value is ErrorDetailsMovieState) {
          return Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  context.go("/");
                },
              ),
            ),
            body: Center(
              child: Text(value.error),
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                context.go("/");
              },
            ),
          ),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
