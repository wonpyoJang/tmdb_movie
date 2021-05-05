import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:athenaslab_test/utils/unit_helper.dart';
import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  final String title;
  final double? maxWidth;

  const MovieTitle({
    Key? key,
    required this.title,
    this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth,
      child: Text(title,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: "NotoSansKR",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            height: UnitHelper.getTextHeightRatio(
                heightInPixel: 17, fontSizeInPixel: 12),
            letterSpacing: UnitHelper.getPixel(em: -0.015),
            color: ColorList.black,
          )),
    );
  }
}