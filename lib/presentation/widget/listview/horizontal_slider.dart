import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {
  final double height;
  final Function itemBuilder;
  final double spacing;

  const HorizontalSlider(
      {Key? key,
      required this.height,
      required this.itemBuilder,
      required this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          Widget content = itemBuilder(context, index);
          return Padding(padding: EdgeInsets.only(right: spacing), child: content);
        },
      ),
    );
  }
}
