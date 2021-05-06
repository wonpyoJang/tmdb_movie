import 'package:athenaslab_test/data/model/movie.dart';
import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api_impl.dart';
import 'package:athenaslab_test/data/repository/movie_repository_impl.dart';
import 'package:athenaslab_test/domain/get_next_now_playing_use_case.dart';
import 'package:athenaslab_test/domain/get_now_playing_movie_list.dart';
import 'package:athenaslab_test/domain/get_popular_movie_list_use_case.dart';
import 'package:athenaslab_test/domain/get_top_rated_movie_list_use_case.dart';
import 'package:athenaslab_test/domain/get_upcoming_movie_list_use_case.dart';
import 'package:flutter/material.dart';

import '../../domain/get_now_playing_movie_list.dart';

class MainMovieListViewModel extends ChangeNotifier {
  List<Movie> nowPlayingMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> topRatedMovies = [];
  List<Movie> upcomingMovies = [];
  ScrollController scrollController = ScrollController();

  int nowPlayingCurrentPage = 0;

  bool isLoadingMore = false;

  get isLoading =>
      nowPlayingMovies.isEmpty ||
      popularMovies.isEmpty ||
      topRatedMovies.isEmpty ||
      upcomingMovies.isEmpty;

  GetNowPlayingMovieListUseCase getNowPlayingMovieListUseCase =
      GetNowPlayingMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetNextNowPlayingMovieListUseCase getNextNowPlayingMovieListUseCase =
      GetNextNowPlayingMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetPopularMovieListUseCase getPopularMovieListUseCase =
      GetPopularMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetTopRatedMovieListUseCase getTopRatedMovieListUseCase =
      GetTopRatedMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetUpcomingMovieListUseCase getUpcomingMovieListUseCase =
      GetUpcomingMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));

  void getInitialContents() async {
    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        isLoadingMore = !isLoadingMore;
        notifyListeners();

        try {
          var result = await getNextNowPlayingMovieListUseCase.perform(
              page: nowPlayingCurrentPage);
          nowPlayingMovies.addAll(result.results);
          nowPlayingCurrentPage++;
        } catch (_) {
          isLoadingMore = !isLoadingMore;
        }
        isLoadingMore = !isLoadingMore;
        notifyListeners();
      }
    });

    try {
      MovieResponse result = await getNowPlayingMovieListUseCase.perform();
      nowPlayingMovies = result.results;
      nowPlayingCurrentPage++;

      result = await getPopularMovieListUseCase.perform();
      popularMovies = result.results;

      result = await getTopRatedMovieListUseCase.perform();
      topRatedMovies = result.results;

      result = await getUpcomingMovieListUseCase.perform();
      upcomingMovies = result.results;

      notifyListeners();
    } catch (e) {
      notifyListeners();
      await Future.delayed(Duration(milliseconds: 500));
      throw "데이터를 가져오지 못했습니다.";
    }
  }

  void getNowPlayingMovie() async {
    try {
      MovieResponse result = await getNextNowPlayingMovieListUseCase.perform(
          page: nowPlayingCurrentPage);
      nowPlayingMovies = result.results;
      ++nowPlayingCurrentPage;

      result = await getPopularMovieListUseCase.perform();
      popularMovies = result.results;

      notifyListeners();
    } catch (e) {
      notifyListeners();
      await Future.delayed(Duration(milliseconds: 500));
      throw "데이터를 가져오지 못했습니다.";
    }
  }
}
