import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_flutter/core/typograph.dart';
import 'package:movies_flutter/modules/home/presentations/home_viewmodel.dart';

import 'widgets/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var homeViewModel = GetIt.instance<HomeViewModel>();

  @override
  void initState() {
    homeViewModel.getTrendingMovies();
    homeViewModel.getAllMovies();
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
                valueListenable: homeViewModel.trendingMovies,
                builder: (context, value, child) => SizedBox(
                  height: height * .64,
                  child: ListView.builder(
                    itemCount: value.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var movie = value[index];
                      return MovieTrendingItemWidget(
                        posterPath: movie.posterPath,
                        title: movie.title,
                      );
                    },
                  ),
                ),
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
                valueListenable: homeViewModel.allMovies,
                builder: (context, value, child) => SizedBox(
                  height: height * .7,
                  child: ListView.builder(
                    itemCount: value.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var movie = value[index];
                      return MovieGeneralItemWidget(
                        posterPath: movie.posterPath,
                        title: movie.title,
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
