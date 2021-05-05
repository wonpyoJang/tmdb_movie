import 'package:athenaslab_test/presentation/movie_detail/movie_detail_screen.dart';
import 'package:athenaslab_test/presentation/movie_list/main_movie_list_screen.dart';
import 'package:athenaslab_test/presentation/movie_list/main_movie_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ScreenList.root: (context) =>
            ChangeNotifierProvider<MainMovieListViewModel>(
                create: (context) => MainMovieListViewModel(),
                child: MainMovieListScreen()),
        ScreenList.movieDetail: (context) => MovieDetailScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MainMovieListViewModel>(
          create: (context) => MainMovieListViewModel(),
          child: MainMovieListScreen()),
    );
  }
}
