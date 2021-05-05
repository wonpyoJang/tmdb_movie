import 'package:athenaslab_test/data/model/movie.dart';
import 'package:athenaslab_test/presentation/utils/unit_helper.dart';
import 'package:athenaslab_test/presentation/widget/poster_image.dart';
import 'package:athenaslab_test/presentation/widget/rating.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:athenaslab_test/symbols/route_list.dart';
import 'package:flutter/material.dart';

import '../movie_title.dart';

class ListTileMovieItem extends StatelessWidget {

  final Movie movie;

  const ListTileMovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ScreenList.movieDetail);
      },
      child: Container(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          PosterImage(
            width: 45,
            height: 69,
            borderRadius: 8.0,
            url: movie.posterImage,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieTitle(title: movie.title),
                SizedBox(height: 4.0),
                Rating(
                  rating: 3,
                  starSize: 9.0,
                ),
                SizedBox(height: 16.2),
                buildMetaData()
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget buildMetaData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [buildGenre(), buildReleaseDate()],
    );
  }

  Widget buildReleaseDate() {
    return Text(movie.releaseDate,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "NotoSansKR",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          fontSize: 9.0,
          height: UnitHelper.getTextHeightRatio(
              heightInPixel: 13.03, fontSizeInPixel: 9.0),
          letterSpacing: UnitHelper.getPixel(em: -0.015),
          color: ColorList.grey,
        ));
  }

  Widget buildGenre() {
    return Text(movie.genreIds.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "NotoSansKR",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          fontSize: 9.0,
          height: UnitHelper.getTextHeightRatio(
              heightInPixel: 13.03, fontSizeInPixel: 9.0),
          letterSpacing: UnitHelper.getPixel(em: -0.015),
          color: ColorList.grey,
        ));
  }
}
