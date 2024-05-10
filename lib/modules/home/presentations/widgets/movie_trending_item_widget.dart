import 'package:flutter/material.dart';

import 'package:movies_flutter/core/typograph.dart';

class MovieTrendingItemWidget extends StatelessWidget {
  const MovieTrendingItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEE2t2.jpg',
          width: width * .6,
          height: height * .6,
          fit: BoxFit.fill,
        ),
        Text(
          "Duna",
          style: customTextStyle(CustomTextStyleEnum.headline),
        )
      ],
    );
  }
}
