import 'package:flutter/material.dart';

import 'area_titile.dart';

class ListScreenArea extends StatelessWidget {
  final String title;
  final Widget content;

  const ListScreenArea({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [AreaTitle(title: title), SizedBox(height: 16.0), content],
    );
  }
}
