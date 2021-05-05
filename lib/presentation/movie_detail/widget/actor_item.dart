import 'package:athenaslab_test/data/model/cast.dart';
import 'package:athenaslab_test/presentation/utils/unit_helper.dart';
import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:flutter/material.dart';

class ActorItem extends StatelessWidget {
  final Cast cast;

  const ActorItem({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(cast.profileImage ?? ""),
        ),
        Text(cast.name ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 8.0,
              height: UnitHelper.getTextHeightRatio(
                  heightInPixel: 12.0, fontSizeInPixel: 8.0),
              letterSpacing: UnitHelper.getPixel(em: -0.015),
              color: ColorList.black,
            ))
      ],
    );
  }
}
