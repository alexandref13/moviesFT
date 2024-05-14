import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:movies_flutter/theme/typograph.dart';

class MovieGeneralItemWidget extends StatelessWidget {
  final String posterPath;
  final String title;
  const MovieGeneralItemWidget({
    super.key,
    required this.posterPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://image.tmdb.org/t/p/w500/$posterPath',
              width: width * .85,
              height: height * .3,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: width * .5,
            child: Text(
              title,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: customTextStyle(CustomTextStyleEnum.titleLarge),
            ),
          )
        ],
      ),
    );
  }
}
