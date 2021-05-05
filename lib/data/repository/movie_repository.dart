import 'package:athenaslab_test/data/model/cast_response.dart';
import 'package:athenaslab_test/data/model/movie_detail.dart';
import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/model/review_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';

abstract class MovieRepository{
  Future<MovieResponse> getMovies({
    required MovieApiCallType type,
  });

  Future<MovieDetail> getMovieDetail({
    required int id,
  });

  Future<CastResponse> getMovieCast({
    required int id,
  });

  Future<ReviewResponse> getMovieReview({
    required int id,
  });
}