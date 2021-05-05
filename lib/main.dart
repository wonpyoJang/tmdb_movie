import 'package:athenaslab_test/presentation/movie_detail/movie_detail_screen.dart';
import 'package:athenaslab_test/presentation/movie_list/list_screen.dart';
import 'package:flutter/material.dart';

import 'symbols/route_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: ScreenList.root,
      routes: {
        ScreenList.root: (context) => MainMovieListScreen(),
        ScreenList.movieDetail: (context) => MovieDetailScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMovieListScreen(),
    );
  }
}
