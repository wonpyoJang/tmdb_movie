import 'package:athenaslab_test/presentation/movie_list/widget/movie_item/card_movie_item.dart';
import 'package:athenaslab_test/presentation/widget/listview/horizontal_slider.dart';
import 'package:athenaslab_test/presentation/widget/listview/vertical_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget/list_screen_area.dart';
import 'widget/movie_item/list_tile_movie_item.dart';

class MainMovieListScreen extends StatelessWidget {
  const MainMovieListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // dummy appbar : 화면 영역을 status bar 아래로 제한한다.
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 23),
          buildCurrentScreeningArea(),
          SizedBox(height: 40),
          buildComingSoonArea(),
          SizedBox(height: 24),
          buildPopularArea(),
          SizedBox(height: 24),
          buildHighRatingArea(),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }

  Widget buildCurrentScreeningArea() {
    return Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: ListScreenArea(
          title: "현재 상영중",
          content: HorizontalSlider(
            height: 196,
            spacing: 17.0,
            itemBuilder: (context, index) => CardMovieItem(),
          ),
        ));
  }

  Widget buildComingSoonArea() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListScreenArea(
          title: "개봉 예정",
          content: VerticalListView(
              spacing: 8.0,
              itemBuilder: (context, index) => ListTileMovieItem()),
        ));
  }

  Widget buildPopularArea() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListScreenArea(
          title: "인기",
          content: VerticalListView(
              spacing: 8.0,
              itemBuilder: (context, index) => ListTileMovieItem()),
        ));
  }

  Widget buildHighRatingArea() {
    return Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: ListScreenArea(
          title: "높은 평점",
          content: VerticalListView(
              spacing: 8.0,
              itemBuilder: (context, index) => ListTileMovieItem()),
        ));
  }
}
