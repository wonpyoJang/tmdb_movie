import 'package:athenaslab_test/presentation/movie_list/widget/movie_item/list_tile_movie_item.dart';
import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  final Function itemBuilder;
  final double spacing;

  const VerticalListView(
      {Key? key, required this.itemBuilder, required this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(3, (index) {
          Widget content = itemBuilder(context, index);

          return Padding(
            padding: EdgeInsets.only(bottom: index < 2 ? spacing : 0.0),
            child: content,
          );
        }),
      ),
    );
  }
}
