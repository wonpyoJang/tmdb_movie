import 'package:flutter/material.dart';

import 'card_movie_item.dart';

class HorizontalSlider extends StatelessWidget {
  final double width;

  const HorizontalSlider({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.only(right: 17.0), child: CardMovieItem());
        },
      ),
    );
  }
}