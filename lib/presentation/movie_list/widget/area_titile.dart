import 'dart:ui';

import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:athenaslab_test/utils/unit_helper.dart';
import 'package:flutter/material.dart';

class AreaTitle extends StatelessWidget {
  final String title;

  const AreaTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              height: UnitHelper.getTextHeightRatio(
                  heightInPixel: 28.96, fontSizeInPixel: 20),
              letterSpacing: UnitHelper.getPixel(em: -0.015),
              color: ColorList.black,
            )));
  }
}
