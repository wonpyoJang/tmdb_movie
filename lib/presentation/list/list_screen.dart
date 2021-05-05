import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/area_titile.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

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
    return Column(
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
        SizedBox(height: 70,)
      ],
    );
  }

  Widget buildHighRatingArea() {
    return Padding(
        padding: EdgeInsets.only(left: 16.0), child: AreaTitle(title: "높은 평점"));
  }

  Widget buildPopularArea() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: AreaTitle(title: "인기"));
  }

  Widget buildComingSoonArea() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: AreaTitle(title: "개봉 예정"));
  }

  Widget buildCurrentScreeningArea() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: AreaTitle(title: "현재 상영중"));
  }
}
