import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_flutter/modules/details/presentations/details_state.dart';
import 'package:movies_flutter/modules/details/presentations/details_viewmodel.dart';

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
          return Scaffold(
            appBar: AppBar(
              title: Text(value.movie.title),
              leading: BackButton(
                onPressed: () {
                  context.go("/");
                },
              ),
            ),
            body: Center(
              child: Text(widget.id ?? ""),
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
