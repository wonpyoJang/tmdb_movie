import 'package:flutter/material.dart';

import '../movie_item/list_tile_movie_item.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
          3,
          (index) => Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTileMovieItem()),
        ),
      ),
    );
  }
}
