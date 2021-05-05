import 'package:athenaslab_test/presentation/movie_detail/widget/actor_item.dart';
import 'package:athenaslab_test/presentation/movie_detail/widget/area_title.dart';
import 'package:athenaslab_test/presentation/movie_detail/widget/movie_summary_area.dart';
import 'package:athenaslab_test/presentation/utils/unit_helper.dart';
import 'package:athenaslab_test/presentation/widget/listview/horizontal_slider.dart';
import 'package:athenaslab_test/presentation/widget/listview/vertical_list_view.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MovieInfoArea(),
          SizedBox(height: 24.0),
          buildSubArea(
              title: "개요",
              content: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: buildMoviePlot(),
              )),
          SizedBox(height: 24.0),
          buildSubArea(
              title: "주요 출연진",
              content: HorizontalSlider(
                height: 54.0,
                spacing: 16.0,
                itemCount: 100,
                itemBuilder: (context, index) => ActorItem(),
              )),
          SizedBox(height: 24.0),
          buildSubArea(
              title: "리뷰",
              content: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: VerticalListView(
                  spacing: 16.0,
                  itemBuilder: (context, index) {
                    return buildReviewItem();
                  },
                ),
              )),
          SizedBox(height: 76.0),
        ],
      ),
    );
  }

  Widget buildReviewItem() {
    return Container(
      height: 71,
      child: Column(
        children: [buildReviewText(), buildReviewWriter()],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorList.shadow,
            blurRadius: 4.0,
          )
        ],
      ),
    );
  }

  Widget buildReviewWriter() {
    return Row(
      children: [
        Expanded(child: Container()),
        Container(
          margin: const EdgeInsets.only(right: 8, bottom: 8),
          child: Container(
            height: 15,
            child: Text("Cat Ellington",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: "NotoSansKR",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                  height: UnitHelper.getTextHeightRatio(
                      heightInPixel: 17.0, fontSizeInPixel: 12.0),
                  letterSpacing: UnitHelper.getPixel(em: -0.015),
                  color: ColorList.thinGrey,
                )),
          ),
        ),
      ],
    );
  }

  Widget buildReviewText() {
    return Container(
      margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 4.0),
      child: Container(
        height: 36,
        child: Text(
            "As I'm writing this review, Darth Vader's theme music begins to build in my mind...",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 12.0,
              height: UnitHelper.getTextHeightRatio(
                  heightInPixel: 17.0, fontSizeInPixel: 12.0),
              letterSpacing: UnitHelper.getPixel(em: -0.015),
              color: ColorList.thinGrey,
            )),
      ),
    );
  }

  Widget buildMoviePlot() {
    return Text(
        "종말을 맞이한 지구, 북극에는 외로운 과학자 오거스틴이 살아있다. 오거스틴은 탐사를 마치고 귀환하던 중 지구와 연락이 끊긴 우주 비행사 설리가 짧은 교신에 성공한다. 그는 설리와 그녀의 동료 우주 비행사들이 원인 불명의 재앙을 맞은 지구로 귀환하는 것을 막고자 분투하는데...",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "NotoSansKR",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
          height: UnitHelper.getTextHeightRatio(
              heightInPixel: 20.0, fontSizeInPixel: 14.0),
          letterSpacing: UnitHelper.getPixel(em: -0.015),
          color: ColorList.lightGrey,
        ));
  }

  Widget buildSubArea({required String title, required Widget content}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AreaTitle(title: title),
          SizedBox(height: 16.0),
          content,
        ],
      ),
    );
  }
}
