import 'package:athenaslab_test/presentation/utils/unit_helper.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:flutter/material.dart';

class AreaTitle extends StatelessWidget {
  final String title;

  const AreaTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              height: UnitHelper.getTextHeightRatio(
                  heightInPixel: 23.0, fontSizeInPixel: 16.0),
              letterSpacing: UnitHelper.getPixel(em: -0.015),
              color: ColorList.black,
            )));
  }
}
