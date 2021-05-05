import 'package:athenaslab_test/data/model/cast_response.dart';
import 'package:athenaslab_test/data/model/movie_detail.dart';
import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/model/review_response.dart';

enum MovieApiCallType {
  NOW_PLAYING,
  POPULAR,
  TOP_RATE,
  UPCOMING,
}

Map<MovieApiCallType, String> endpointFromType = {
  MovieApiCallType.NOW_PLAYING: "/3/movie/now_playing",
  MovieApiCallType.POPULAR: "/3/movie/popular",
  MovieApiCallType.TOP_RATE: "/3/movie/top_rated",
  MovieApiCallType.UPCOMING: "/3/movie/upcoming",
};

abstract class MovieApi {
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
