import 'package:athenaslab_test/presentation/utils/unit_helper.dart';
import 'package:athenaslab_test/presentation/widget/rating.dart';
import 'package:athenaslab_test/presentation/widget/poster_image.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:flutter/material.dart';

class MovieInfoArea extends StatelessWidget {
  const MovieInfoArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 297,
      child: Stack(
        children: [
          SizedBox(height: 297),
          buildBackgroundImage(),
          buildRoundedConer(),
          buildMovieSummary()
        ],
      ),
    );
  }

  Widget buildMovieSummary() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(left: 16.0),
        child: Row(
          children: [
            PosterImage(width: 104, height: 159, borderRadius: 8, url: ''),
            SizedBox(width: 16.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 67),
                buildMovieTitle(),
                SizedBox(height: 4),
                buildAdultMark(),
                SizedBox(height: 4),
                buildGenre(),
                SizedBox(height: 0.88),
                buildPublishedDate(),
                SizedBox(height: 7.98),
                Rating(rating: 3, starSize: 13.0)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildAdultMark() {
    return Container(
      width: 27,
      height: 12,
      child: Center(
        child: Text("Adult",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 7.0,
              height: UnitHelper.getTextHeightRatio(
                  heightInPixel: 10, fontSizeInPixel: 7.0),
              letterSpacing: UnitHelper.getPixel(em: -0.015),
              color: ColorList.red,
            )),
      ),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1.0,
        color: ColorList.strongRed,
      )),
    );
  }

  Widget buildMovieTitle() {
    return Container(
      height: 16.0,
      child: Text(
        "미드나이트 스카이",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "NotoSansKR",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 12.0,
          height: UnitHelper.getTextHeightRatio(
              heightInPixel: 17.0, fontSizeInPixel: 12.0),
          letterSpacing: UnitHelper.getPixel(em: -0.015),
          color: ColorList.black,
        ),
      ),
    );
  }

  Widget buildRoundedConer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 128,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              16.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackgroundImage() {
    return Container(
      height: 296,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://picsum.photos/200"),
        ),
      ),
    );
  }

  Widget buildGenre() {
    return Container(
      height: 16.0,
      child: Text(
        "드라마, SF",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "NotoSansKR",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          fontSize: 11,
          height: UnitHelper.getTextHeightRatio(
              heightInPixel: 15.93, fontSizeInPixel: 11.0),
          letterSpacing: UnitHelper.getPixel(em: -0.015),
          color: ColorList.strongGrey,
        ),
      ),
    );
  }

  Widget buildPublishedDate() {
    return Container(
      height: 16.0,
      child: Text(
        "2020-12-10 발매",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "NotoSansKR",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          fontSize: 11,
          height: UnitHelper.getTextHeightRatio(
              heightInPixel: 15.93, fontSizeInPixel: 11.0),
          letterSpacing: UnitHelper.getPixel(em: -0.015),
          color: ColorList.strongGrey,
        ),
      ),
    );
  }
}
