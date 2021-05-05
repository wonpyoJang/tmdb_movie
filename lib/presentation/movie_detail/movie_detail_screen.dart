import 'package:athenaslab_test/presentation/movie_detail/widget/movie_summary_area.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MovieSummaryArea(),
      body: Container(),
    );
  }
}
