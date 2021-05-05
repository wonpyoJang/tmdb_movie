import 'package:athenaslab_test/presentation/widget/poster_image.dart';
import 'package:athenaslab_test/presentation/movie_list/widget/rating.dart';
import 'package:athenaslab_test/symbols/route_list.dart';
import 'package:flutter/material.dart';

import '../movie_title.dart';

class CardMovieItem extends StatelessWidget {
  const CardMovieItem({Key? key}) : super(key: key);

  static const double WIDTH = 104.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ScreenList.movieDetail);
      },
      child: Container(
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
              MovieTitle(
                title: "Moonlight Movie",
                maxWidth: WIDTH,
              ),
              SizedBox(width: 4.0),
              Rating(
                rating: 3,
                starSize: 9.0,
              )
            ],
          )),
    );
  }
}
