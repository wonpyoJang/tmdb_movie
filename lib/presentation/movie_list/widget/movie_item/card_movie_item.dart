import 'package:athenaslab_test/data/model/movie.dart';
import 'package:athenaslab_test/presentation/widget/poster_image.dart';
import 'package:athenaslab_test/presentation/widget/rating.dart';
import 'package:athenaslab_test/symbols/route_list.dart';
import 'package:flutter/material.dart';

import '../movie_title.dart';

class CardMovieItem extends StatelessWidget {
  final Movie movie;

  const CardMovieItem({Key? key, required this.movie}) : super(key: key);

  static const double WIDTH = 104.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ScreenList.movieDetail, arguments: movie);
      },
      child: Container(
          width: WIDTH,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              PosterImage(
                url: movie.posterImage,
                width: WIDTH,
                height: 159.17,
                borderRadius: 8.0,
              ),
              SizedBox(height: 6.83),
              MovieTitle(
                title: movie.title,
                maxWidth: WIDTH,
              ),
              SizedBox(width: 4.0),
              RatingStars(
                rating: (movie.voteAverage / 2).round(),
                starSize: 9.0,
              )
            ],
          )),
    );
  }
}
