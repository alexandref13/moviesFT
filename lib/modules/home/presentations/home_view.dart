import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MoviesFT"),
      ),
      body: const Column(
        children: [
          MovieTrendingItemWidget(),
        ],
      ),
    );
  }
}
