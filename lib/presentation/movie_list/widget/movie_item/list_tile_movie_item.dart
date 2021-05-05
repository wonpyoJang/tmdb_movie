import 'package:athenaslab_test/presentation/movie_list/widget/poster_image.dart';
import 'package:athenaslab_test/presentation/movie_list/widget/rating.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:athenaslab_test/symbols/route_list.dart';
import 'package:athenaslab_test/utils/unit_helper.dart';
import 'package:flutter/material.dart';

import '../movie_title.dart';

class ListTileMovieItem extends StatelessWidget {
  const ListTileMovieItem({Key? key}) : super(key: key);

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
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieTitle(title: "Moonlight Movie"),
                SizedBox(height: 4.0),
                Rating(
                  rating: 3,
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
      children: [buildGenre(), buildCreatedDate()],
    );
  }

  Widget buildCreatedDate() {
    return Text("2016-08-03",
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
    return Text("Action, Drama",
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
