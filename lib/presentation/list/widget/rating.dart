import 'package:flutter/material.dart';

import 'star.dart';

class Rating extends StatelessWidget {
  final int rating;

  const Rating({Key? key, required this.rating}) : super(key: key);

  static const int MAX_STARS = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(MAX_STARS, (index) {
        double rightPadding = 5;

        if (index == MAX_STARS) {
          rightPadding = 0.0;
        } else if (index % 2 == 1) {
          rightPadding = 4.0;
        }

        return Container(
          child: Padding(
              padding: EdgeInsets.only(right: rightPadding),
              child: Star(isOn: index <= rating - 1, size: 9)),
        );
      }),
    );

    return Star(isOn: true, size: 9);
  }
}
