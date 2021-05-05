import 'package:athenaslab_test/symbols/color_list.dart';
import 'package:flutter/material.dart';

class PosterImage extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;

  const PosterImage({
    Key? key,
    required this.width,
    required this.height,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: ColorList.shadow,
          )
        ],
      ),
    );
  }
}
