import 'package:athenaslab_test/presentation/widget/poster_image.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Container(),
    );
  }

  PreferredSize buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(320),
      child: Stack(
        children: [
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
        child: PosterImage(width: 104, height: 159, borderRadius: 8),
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
      height: 297,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://picsum.photos/200"),
        ),
      ),
    );
  }
}
