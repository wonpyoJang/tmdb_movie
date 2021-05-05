import 'package:athenaslab_test/data/model/cast_response.dart';
import 'package:athenaslab_test/data/model/movie.dart';
import 'package:athenaslab_test/data/model/movie_detail.dart';
import 'package:athenaslab_test/data/model/review_response.dart';
import 'package:athenaslab_test/data/remote/movie_api_impl.dart';
import 'package:athenaslab_test/data/repository/movie_repository_impl.dart';
import 'package:athenaslab_test/domain/get_movie_cast_use_case.dart';
import 'package:athenaslab_test/domain/get_movie_detail_use_case.dart';
import 'package:athenaslab_test/domain/get_movie_review_use_case.dart';
import 'package:flutter/material.dart';

class MovieDetailViewModel extends ChangeNotifier {
  final Movie movie;

  MovieDetail? movieDetail;
  ReviewResponse? reviews;
  CastResponse? casts;

  late GetMovieDetailUseCase getMovieDetailUseCase;
  late GetMovieReviewUseCase getMovieReviewUseCase;
  late GetMovieCastUseCase getMovieCastUseCase;

  get isLoading => movieDetail == null || reviews == null || casts == null;

  MovieDetailViewModel({required this.movie});

  void getInitialContents() async {
    getMovieDetailUseCase = GetMovieDetailUseCase(
        MovieRepositoryImpl(MovieApiImpl()),
        id: movie.id);

    getMovieReviewUseCase = GetMovieReviewUseCase(
        MovieRepositoryImpl(MovieApiImpl()),
        id: movie.id);

    getMovieCastUseCase =
        GetMovieCastUseCase(MovieRepositoryImpl(MovieApiImpl()), id: movie.id);

    try {
      var result = await getMovieDetailUseCase.perform();
      movieDetail = result;

      var castResult = await getMovieCastUseCase.perform();
      casts = castResult;

      var reviewResult = await getMovieReviewUseCase.perform();
      reviews = reviewResult;
      notifyListeners();
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      throw "데이터를 가져오지 못했습니다.";
    }
  }
}
