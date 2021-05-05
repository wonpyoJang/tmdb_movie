import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  final Function itemBuilder;
  final double spacing;
  final int itemCount;

  const VerticalListView(
      {Key? key,
      required this.itemBuilder,
      required this.spacing,
      required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(itemCount >= 3 ? 3 : itemCount, (index) {
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
