import 'package:athenaslab_test/data/model/movie.dart';
import 'package:athenaslab_test/data/model/review.dart';
import 'package:athenaslab_test/presentation/movie_detail/movie_detail_view_model.dart';
import 'package:athenaslab_test/presentation/movie_detail/widget/actor_item.dart';
import 'package:athenaslab_test/presentation/movie_detail/widget/area_title.dart';
import 'package:athenaslab_test/presentation/movie_detail/widget/movie_summary_area.dart';
import 'package:athenaslab_test/presentation/utils/unit_helper.dart';
import 'package:athenaslab_test/presentation/widget/listview/horizontal_slider.dart';
import 'package:athenaslab_test/presentation/widget/listview/vertical_list_view.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  void initState() {
    super.initState();
    var viewModel = getViewModel(context, listen: false);
    viewModel.getInitialContents();
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = getViewModel(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: viewModel.isLoading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    var viewModel = getViewModel(context, listen: true);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MovieInfoArea(movie: widget.movie),
          SizedBox(height: 24.0),
          buildSubArea(
              title: "개요",
              content: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: buildMovieOverview(),
              )),
          SizedBox(height: 24.0),
          buildSubArea(
              title: "주요 출연진",
              content: HorizontalSlider(
                height: 54.0,
                spacing: 16.0,
                itemCount: viewModel.casts!.cast!.length,
                itemBuilder: (context, index) =>
                    viewModel.casts?.cast?[index] != null
                        ? ActorItem(cast: viewModel.casts!.cast![index])
                        : CircularProgressIndicator(),
              )),
          SizedBox(height: 24.0),
          buildSubArea(
              title: "리뷰",
              content: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: VerticalListView(
                  spacing: 16.0,
                  itemCount: viewModel.reviews?.results?.length ?? 0,
                  itemBuilder: (context, index) {
                    if (viewModel.reviews?.results?[index] == null) {
                      return CircularProgressIndicator();
                    }

                    return buildReviewItem(context,
                        review: viewModel.reviews!.results![index]);
                  },
                ),
              )),
          SizedBox(height: 76.0),
        ],
      ),
    );
  }

  Widget buildReviewItem(BuildContext context, {required Review review}) {
    return Container(
      height: 71,
      child: Column(
        children: [
          buildReviewText(context, text: review.content ?? ""),
          buildReviewWriter(context, title: review.author ?? "")
        ],
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

  Widget buildReviewWriter(BuildContext context, {required String title}) {
    return Row(
      children: [
        Expanded(child: Container()),
        Container(
          margin: const EdgeInsets.only(right: 8, bottom: 8),
          child: Container(
            height: 15,
            child: Text(title,
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

  Widget buildReviewText(BuildContext context, {required String text}) {
    var viewModel = getViewModel(context, listen: true);

    return Container(
      margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 4.0),
      child: Container(
        height: 36,
        child: Text(text,
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

  Widget buildMovieOverview() {
    return Text(widget.movie.overview,
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

  MovieDetailViewModel getViewModel(BuildContext context,
      {required bool listen}) {
    return Provider.of<MovieDetailViewModel>(context, listen: listen);
  }
}
