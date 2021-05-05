import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Star extends StatelessWidget {
  final bool isOn;
  final double size;

  const Star({Key? key, required this.isOn, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isOn
        ? SvgPicture.asset('assets/list/star_on.svg', width: size, height: size,)
        : SvgPicture.asset('assets/list/star_off.svg', width: size, height: size,);
  }
}
