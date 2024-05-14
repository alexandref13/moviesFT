import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_flutter/modules/home/presentations/all_movies_state.dart';
import 'package:movies_flutter/modules/home/presentations/all_movies_viewmodel.dart';
import 'package:movies_flutter/modules/home/presentations/trending_movies_state.dart';
import 'package:movies_flutter/modules/home/presentations/trending_movies_viewmodel.dart';
import 'package:movies_flutter/theme/typograph.dart';

import 'widgets/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var allMoviesViewModel = GetIt.instance<AllMoviesViewModel>();
  var trendingViewModel = GetIt.instance<TrendingMoviesViewModel>();

  @override
  void initState() {
    trendingViewModel.getTrendingMovies();
    allMoviesViewModel.getAllMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MoviesFT"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ValueListenableBuilder(
                valueListenable: trendingViewModel,
                builder: (context, value, child) {
                  if (value is ErrorTrendingMoviesState) {
                    return Center(
                      child: Text(value.error),
                    );
                  }

                  if (value is SuccessTrendingMoviesState) {
                    return SizedBox(
                      height: height * .64,
                      child: ListView.builder(
                        itemCount: value.trendingMovies.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var movie = value.trendingMovies[index];
                          return MovieTrendingItemWidget(
                            posterPath: movie.posterPath,
                            title: movie.title,
                          );
                        },
                      ),
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Recomendados",
                style: customTextStyle(CustomTextStyleEnum.headline),
              ),
              const SizedBox(
                height: 8,
              ),
              ValueListenableBuilder(
                valueListenable: allMoviesViewModel,
                builder: (context, value, child) {
                  if (value is ErrorAllMoviesState) {
                    return Center(
                      child: Text(value.error),
                    );
                  }

                  if (value is SuccessAllMoviesState) {
                    return SizedBox(
                      height: height * .7,
                      child: ListView.builder(
                        itemCount: value.allMovies.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var movie = value.allMovies[index];
                          return MovieGeneralItemWidget(
                            posterPath: movie.posterPath,
                            title: movie.title,
                          );
                        },
                      ),
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
