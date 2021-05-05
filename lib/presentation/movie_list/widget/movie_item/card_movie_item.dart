import 'package:athenaslab_test/presentation/movie_list/widget/poster_image.dart';
import 'package:athenaslab_test/presentation/movie_list/widget/rating.dart';
import 'package:flutter/material.dart';

import '../movie_title.dart';

class CardMovieItem extends StatelessWidget {
  const CardMovieItem({Key? key}) : super(key: key);

  static const double WIDTH = 104.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: WIDTH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            PosterImage(
              width: WIDTH,
              height: 159.17,
              borderRadius: 8.0,
            ),
            SizedBox(height: 6.83),
            MovieTitle(title: "Moonlight Movie", maxWidth: WIDTH,),
            SizedBox(width: 4.0),
            Rating(
              rating: 3,
            )
          ],
        ));
  }
}


