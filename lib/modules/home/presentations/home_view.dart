import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
