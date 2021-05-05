import 'package:athenaslab_test/data/model/movie_response.dart';

enum MovieApiCallType {
  NOW_PLAYING,
  POPULAR,
  TOP_RATE,
  UPCOMING,
}

Map<MovieApiCallType, String> endpointFromType = {
  MovieApiCallType.NOW_PLAYING: "/movie/now_playing",
  MovieApiCallType.POPULAR: "/movie/popular",
  MovieApiCallType.TOP_RATE: "/movie/top_rated",
  MovieApiCallType.UPCOMING: "/movie/upcoming",
};

abstract class MovieApi {
  Future<MovieResponse> getMovies({
    required MovieApiCallType type,
  });
}
