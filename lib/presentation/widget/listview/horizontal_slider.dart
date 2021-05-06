import 'dart:ui';

import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {
  final double height;
  final Function itemBuilder;
  final double spacing;
  final int itemCount;
  final ScrollController? scrollController;

  const HorizontalSlider(
      {Key? key,
      required this.height,
      required this.itemBuilder,
      required this.spacing,
      required this.itemCount,
      this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          Widget content = itemBuilder(context, index);
          return Padding(
              padding: EdgeInsets.only(right: spacing), child: content);
        },
      ),
    );
  }
}
